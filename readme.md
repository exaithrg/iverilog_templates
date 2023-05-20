# NOTE

**Support Icarus Verilog Version: `12.0`**

## How to install

```shell
sudo apt install autoconf automake autotools-dev curl device-tree-compiler libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev git
unzip iverilog12.0.zip
cd iverilog
sh autoconf.sh
./configure
make
make check
sudo make install
# If Permission denied: chmod +x mkinstalldirs
iverilog –v
cd ..
rm -r iverilog
```

### Ref

```
/home/geng/D/ICAIS/projects/IBEXIII/LinuxOnly/自测试样例运行方法
```

## Filelist Gene

```shell
find . -type f -regex ".*\.\(v\|sv\)" > ivfiles.f
```

## Guides

```
https://blog.csdn.net/q774318039a/article/details/126021890
```

## More Info

```
/home/geng/D/Manuals/IC_Design/iverilog
/home/geng/D/Manuals/IC_Design/gtkwave
```

# Thanks

https://github.com/steveicarus/iverilog
