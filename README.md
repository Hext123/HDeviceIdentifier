# HDeviceIdentifier
封装了持久化保存/查看设备唯一标识功能的工具类, 并且可以判断应用是不是第一次安装

[![Version](https://img.shields.io/cocoapods/v/HDeviceIdentifier.svg?style=flat)](https://cocoapods.org/pods/HDeviceIdentifier)
[![License](https://img.shields.io/cocoapods/l/HDeviceIdentifier.svg?style=flat)](https://cocoapods.org/pods/HDeviceIdentifier)
[![Platform](https://img.shields.io/cocoapods/p/HDeviceIdentifier.svg?style=flat)](https://cocoapods.org/pods/HDeviceIdentifier)

### 原理:

* 使用`UUID`+`KeyChain`记录设备唯一标识, 博客地址: <https://blog.wskfz.com/index.php/archives/28/>

### 使用步骤:

#### CocoaPads (推荐):

```ruby
pod 'HDeviceIdentifier', '~> 0.1'
```

#### 手动引入:

1. 下载此项目 (点击`Download ZIP`按钮 或 [点此下载](https://github.com/Hext123/HDeviceIdentifier/archive/master.zip))

2. 把`HDeviceIdentifier`目录下的`HDeviceIdentifierUtils`文件夹拖到你的项目中 ([查看此文件夹](https://github.com/Hext123/HDeviceIdentifier/tree/master/HDeviceIdentifier/HDeviceIdentifierUtils))

3. 打开你项目的`Target`->`Build Phases`->`Compile Sources`, 找到`SFHFKeychainUtils.m`项, 双击此项并填入`-fno-objc-arc` (因为此文件不是ARC下编写的)

4. 现在可以开始使用了.

### 方法说明:

* `+(NSString*)deviceIdentifier;` 返回唯一设备标识, 需要使用设备标识的时候调用此方法, 如用户注册时传给后台判断此手机是不是第一次注册账号

* `+(BOOL)isFirstInstall;` 判断应用是第一次在这台手机上安装
