param ($HostName, $UserName, $JREPath = "jre1.8.0_291")
if ($null -eq $HostName) { $HostName = Read-Host 'Enter Host Name' }
if ($null -eq $UserName) { $UserName = Read-Host 'Enter User Name' }
$pword = Read-Host 'Enter Password' -AsSecureString

If (!(Test-Path -Path avctKVM.jar)) {
    $ServerCertificateValidationCallbackDelegate = [System.Net.ServicePointManager]::ServerCertificateValidationCallback
    [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
    (New-Object System.Net.WebClient).DownloadFile('https://' + $HostName + ':443/software/avctKVM.jar', 'avctKVM.jar')
    [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $ServerCertificateValidationCallbackDelegate }
}

If (!(Test-Path -Path java.security.idrac)) {
    Add-Content -Path .\java.security.idrac -Value "jdk.certpath.disabledAlgorithms=MD2, RSA keySize < 1024"
    Add-Content -Path .\java.security.idrac -Value "jdk.tls.disabledAlgorithms=SSLv3, RC4"
}

$pword = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword))
$ArgumentList = '-cp avctKVM.jar -Djava.library.path=.\lib com.avocent.idrac.kvm.Main -Djava.security.properties=java.security.idrac ip=' + $HostName + ' kmport=5900 vport=5900 user=' + $UserName + ' passwd=' + $pword + ' apcp=1 version=2 vmprivilege=true "helpurl=https://' + $HostName + ':443/help/contents.html"'
$pword = $null

$JavaPath = $(Join-Path -Path $(Join-Path -Path "." -ChildPath $JREPath) -ChildPath "bin\java.exe")

Start-Process $JavaPath -ArgumentList $ArgumentList -Wait
$ArgumentList = $null