# iKVM_Launcher
This is going to be a console launching solution that is designed to be compatible with as many iKVMs as possible. I am initially targeting Dell iDRAC6, Supermicro, and Avocent DSR series products. It is going to be written entirely in powershell, and the idea is for it to not require any external libraries to deploy (except a JRE). 

Currently a work in progress. Please bear with me for a few days. Thanks!


## Installation
You need to download the JRE from https://www.oracle.com/java/technologies/javase-jre8-downloads.html 

Download the archive (NOT exe) for your platform. For example, windows x64 users should download **jre-8u291-windows-x64.tar.gz** 

Extract the jre1.8.0_291 folder into the iKVM_Launcher directory.

Extract the files and place them where the script expects it:

```
iKVM_Launcher
├── jre1.8.0_291
│   ├── bin
│   │   ├── java.exe
│   │   └── javaws.exe
│   └── ...
|
└── README.md
```


