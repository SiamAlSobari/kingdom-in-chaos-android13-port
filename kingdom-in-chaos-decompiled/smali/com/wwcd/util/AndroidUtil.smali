.class public Lcom/wwcd/util/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"


# static fields
.field public static final DEBUG_MD5:Ljava/lang/String; = "9aa0552e5f8440e9c6c04a2fb69c97eb"

.field public static final RELEASE_MD5:Ljava/lang/String; = "15a5c243ebf36384dd59d420b6220558"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetworkEnable(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 142
    .local v0, "conManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 143
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    const/4 v2, 0x0

    .line 146
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static copyRecordToSdCard(Ljava/lang/String;)V
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v5, "dh"

    const-string v6, "copyRecordToSdCard"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "dstDirName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/shared_prefs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "srcDirName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/wwcd/util/IOUtil;->makeDirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/wwcd/SuperIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Cocos2dxPrefsFile.xml"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_preferences.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 174
    .local v4, "srcFiles":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 176
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/wwcd/util/IOUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "i":I
    .end local v4    # "srcFiles":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lcom/wwcd/SuperIOException;
    const-string v5, "dh"

    const-string v6, "makeDirs exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v1    # "e":Lcom/wwcd/SuperIOException;
    :cond_0
    return-void

    .line 177
    .restart local v2    # "i":I
    .restart local v4    # "srcFiles":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "dh"

    const-string v6, "copyRecordToSdCard exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static downloadApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public static downloadAppFromMarket(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 274
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v1, "goToMarket":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "goToMarket":Landroid/content/Intent;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/wwcd/util/AndroidUtil$5;

    invoke-direct {v2, p0}, Lcom/wwcd/util/AndroidUtil$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    const-string v0, ""
    return-object v0
.end method

.method public static final getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    const-string v0, ""
    return-object v0
.end method

.method public static getLocale(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaData(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 153
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/wwcd/util/AndroidUtil;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSignatureMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "e3642530816912682978ad8c491ccbe7"

    return-object v0
.end method

.method public static getVersionCode(Landroid/app/Activity;I)I
    .locals 4
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "defValue"    # I

    .prologue
    .line 248
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget p1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 249
    .restart local p1    # "defValue":I
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 256
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getWIFI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    const-string v0, "02:00:00:00:00:00"
    return-object v0
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "t":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static hasSimCard(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 32
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 34
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 36
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "isAirplaneMode":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isInstall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 291
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 293
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 294
    .local v2, "pI":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    const/4 v4, 0x1

    .line 297
    .end local v2    # "pI":Landroid/content/pm/PackageInfo;
    :cond_0
    return v4

    .line 292
    .restart local v2    # "pI":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mem(Landroid/app/Activity;)J
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 107
    .local v1, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 108
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v4, 0xa

    shr-long/2addr v2, v4

    return-wide v2
.end method

.method public static onRate(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "goToMarket":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "goToMarket":Landroid/content/Intent;
    .local v2, "goToMarket":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    .end local v2    # "goToMarket":Landroid/content/Intent;
    :goto_0
    return-void

    .line 307
    .restart local v1    # "goToMarket":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {p0, p1}, Lcom/wwcd/util/ToastUtil;->alertShort(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "goToMarket":Landroid/content/Intent;
    .restart local v2    # "goToMarket":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "goToMarket":Landroid/content/Intent;
    .restart local v1    # "goToMarket":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static popNewVersionDlgForHttpDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "dlurl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "bt1"    # Ljava/lang/String;
    .param p5, "bt2"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Lcom/wwcd/util/AndroidUtil$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/wwcd/util/AndroidUtil$3;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public static popNewVersionDlgForHttpForceDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "dlurl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;
    .param p5, "bt"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Lcom/wwcd/util/AndroidUtil$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/wwcd/util/AndroidUtil$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public static popNewVersionDlgForMarketApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "dlurl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "bt1"    # Ljava/lang/String;
    .param p5, "bt2"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lcom/wwcd/util/AndroidUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/wwcd/util/AndroidUtil$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public static popNewVersionDlgForMarketAppForce(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "dlurl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;
    .param p5, "bt"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/wwcd/util/AndroidUtil$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/wwcd/util/AndroidUtil$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method
