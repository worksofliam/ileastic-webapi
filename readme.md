## ileastic-webapi sample

This is a template repo with small important examples to get going with [ILEastic](https://github.com/sitemule/ILEastic) with VS Code.

### Installation for ILEastic

ILEastic and noxDb installation on IBM i is very simple.

```sh
git clone --recurse-submodules https://github.com/sitemule/ILEastic.git
cd ILEastic
gmake
```

This will create a library named `ILEASTIC`, which has two binding directories:

* `ILEASTIC` which has the `ILEASTIC` service program inside of it
* `NOXDB` which has the `NOXDB` service program inside of it

### Usage

After installation and cloning this template, open it inside of VS Code and connect to a system. VS Code may show you a message about installing recommended extensions - which are the IBM i specific extensions.

Ensure `ILEASTIC` is on your library list and set your current library to where you want the new objects to be built.

Next, you can open one of the sources in the `samples` directory and they can be compiled into program objects (Control + E / Command + E).

<img width="1210" alt="image" src="https://github.com/worksofliam/ileastic-webapi/assets/3708366/97e1931e-6bd8-4597-ae2f-2ec7aed147b8">

### Running your web API

Add `ILEASTIC` to your library list, as well as the library you compiled your program objects into.

You can use `SBMJOB` to start your web API:

```cl
SBMJOB CMD(CALL PGM(helloworld)) ALWMLTTHD(*YES) JOB(helloworld) JOBQ(QSYSNOMAX) 
```
