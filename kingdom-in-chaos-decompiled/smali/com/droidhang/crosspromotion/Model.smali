.class public Lcom/droidhang/crosspromotion/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhang/crosspromotion/Model$AppItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossPromotion_Model"

.field private static final URL:Ljava/lang/String; = "http://games.droidhang.com/featuredgame/gamelist_android.php"

.field private static _context:Landroid/app/Activity;

.field private static _downloadThread:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;

.field private static _httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

.field private static appItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/droidhang/crosspromotion/Model$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/droidhang/crosspromotion/Model;->appItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/droidhang/crosspromotion/Model;->appItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/droidhang/crosspromotion/Model;->downloadImage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static downloadImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {p1}, Lcom/droidhang/crosspromotion/Model;->isImageDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/droidhang/crosspromotion/Model;->_downloadThread:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;

    if-nez v0, :cond_1

    .line 335
    new-instance v0, Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;

    invoke-direct {v0}, Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;-><init>()V

    sput-object v0, Lcom/droidhang/crosspromotion/Model;->_downloadThread:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;

    .line 336
    sget-object v0, Lcom/droidhang/crosspromotion/Model;->_downloadThread:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;

    invoke-virtual {v0}, Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;->init()V

    .line 338
    :cond_1
    sget-object v0, Lcom/droidhang/crosspromotion/Model;->_downloadThread:Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;

    new-instance v1, Lcom/droidhang/crosspromotion/Model$3;

    invoke-direct {v1, p1}, Lcom/droidhang/crosspromotion/Model$3;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadThread;->downloadFileToMemoryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;Z)V

    goto :goto_0
.end method

.method private static genPostJsonString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "result":Ljava/lang/String;
    sget-object v4, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    const-string v5, "crosspromotion"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 264
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "version"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "version":Ljava/lang/String;
    :try_start_0
    const-string v4, "v"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v4, "appid"

    sget-object v5, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v4, "did"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-static {v6}, Lcom/droidhang/crosspromotion/Model;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-static {v6}, Lcom/droidhang/crosspromotion/Model;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v4, "version_code"

    sget-object v5, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/droidhang/crosspromotion/Model;->getVersionCode(Landroid/app/Activity;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v4, "locale"

    sget-object v5, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-static {v5}, Lcom/droidhang/crosspromotion/Model;->getLocale(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayAppItem()Lcom/droidhang/crosspromotion/Model$AppItem;
    .locals 4

    .prologue
    .line 244
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->getValidAppItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 245
    .local v1, "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhang/crosspromotion/Model$AppItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    new-instance v2, Lcom/droidhang/crosspromotion/util/RandUtil;

    invoke-direct {v2}, Lcom/droidhang/crosspromotion/util/RandUtil;-><init>()V

    new-instance v3, Lcom/droidhang/crosspromotion/Model$2;

    invoke-direct {v3}, Lcom/droidhang/crosspromotion/Model$2;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/droidhang/crosspromotion/util/RandUtil;->random(Ljava/util/List;Lcom/droidhang/crosspromotion/util/RandUtil$GetWeight;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/droidhang/crosspromotion/Model$AppItem;

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 292
    const-string v0, ""

    .line 294
    .local v0, "retVal":Ljava/lang/String;
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 296
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getLocale(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 280
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

.method public static getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "dir":Ljava/io/File;
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->isExternalStorageWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/crosspromotion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v0    # "dir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const-string v1, "CrossPromotion_Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdirs fail, dir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 322
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/crosspromotion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_0
.end method

.method public static getValidAppItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhang/crosspromotion/Model$AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhang/crosspromotion/Model$AppItem;>;"
    sget-object v3, Lcom/droidhang/crosspromotion/Model;->appItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/droidhang/crosspromotion/Model$AppItem;

    .line 233
    .local v1, "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    iget-object v3, v1, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    invoke-static {v3}, Lcom/droidhang/crosspromotion/Model;->isImageDownloaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    sget-object v4, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/droidhang/crosspromotion/util/StringUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {v3}, Lcom/droidhang/crosspromotion/Model;->isInstall(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v1    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    :cond_1
    return-object v2
.end method

.method public static getVersionCode(Landroid/app/Activity;I)I
    .locals 4
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "defValue"    # I

    .prologue
    .line 285
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

    .line 287
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 286
    .restart local p1    # "defValue":I
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static init(Landroid/app/Activity;Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "httpThread"    # Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    .prologue
    .line 55
    sput-object p0, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    .line 56
    sput-object p1, Lcom/droidhang/crosspromotion/Model;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    .line 57
    return-void
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x1

    .line 313
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isImageDownloaded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/droidhang/crosspromotion/Model;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isInstall(Ljava/lang/String;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 355
    sget-object v5, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 356
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 357
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 358
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 359
    .local v2, "pI":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    const/4 v4, 0x1

    .line 362
    .end local v2    # "pI":Landroid/content/pm/PackageInfo;
    :cond_0
    return v4

    .line 357
    .restart local v2    # "pI":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static loadCacheData()V
    .locals 11

    .prologue
    .line 60
    const-string v8, "CrossPromotion_Model"

    const-string v9, "loadCacheData"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v8, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    const-string v9, "crosspromotion"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 63
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "ret"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "ret":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 65
    const-string v8, "CrossPromotion_Model"

    const-string v9, "loadCacheData cache is empty!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v8, "CrossPromotion_Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadCacheData, parse jsonString in pref ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v4, 0x0

    .line 72
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 82
    .local v3, "jsonArray":Lorg/json/JSONArray;
    :try_start_1
    const-string v8, "app"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 87
    :goto_1
    if-eqz v3, :cond_0

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 90
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 91
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v2, Lcom/droidhang/crosspromotion/Model$AppItem;

    invoke-direct {v2}, Lcom/droidhang/crosspromotion/Model$AppItem;-><init>()V

    .line 92
    .local v2, "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    const-string v8, "appid"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    .line 93
    const-string v8, "percent"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->percent:I

    .line 94
    const-string v8, "md5"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    .line 95
    const-string v8, "url"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->url:Ljava/lang/String;

    .line 97
    iget-object v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    invoke-static {v8}, Lcom/droidhang/crosspromotion/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->percent:I

    if-lez v8, :cond_2

    iget-object v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    invoke-static {v8}, Lcom/droidhang/crosspromotion/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v2, Lcom/droidhang/crosspromotion/Model$AppItem;->url:Ljava/lang/String;

    invoke-static {v8}, Lcom/droidhang/crosspromotion/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 101
    sget-object v8, Lcom/droidhang/crosspromotion/Model;->appItems:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "CrossPromotion_Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadCacheData, parse jsonString in pref exp ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 84
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v8, "CrossPromotion_Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadCacheData, parse jsonArray exp ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 105
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    :catch_2
    move-exception v0

    .line 106
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v8, "CrossPromotion_Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadCacheData parse exp ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static openGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "srcApp"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&referrer=utm_source%3Dcross%26utm_medium%3D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%26utm_campaign%3D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "url":Ljava/lang/String;
    const-string v3, "CrossPromotion_Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openGooglePlay, url ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 377
    .local v1, "goToMarket":Landroid/content/Intent;
    sget-object v3, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1    # "goToMarket":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/droidhang/crosspromotion/Model;->_context:Landroid/app/Activity;

    new-instance v4, Lcom/droidhang/crosspromotion/Model$4;

    invoke-direct {v4}, Lcom/droidhang/crosspromotion/Model$4;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static requestData()V
    .locals 5

    .prologue
    .line 111
    const-string v1, "CrossPromotion_Model"

    const-string v2, "requestData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->genPostJsonString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "postJsonString":Ljava/lang/String;
    const-string v1, "CrossPromotion_Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postJsonString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lcom/droidhang/crosspromotion/Model;->_httpThread:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    const-string v2, "http://games.droidhang.com/featuredgame/gamelist_android.php"

    new-instance v3, Lcom/droidhang/crosspromotion/Model$1;

    invoke-direct {v3}, Lcom/droidhang/crosspromotion/Model$1;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;Z)V

    .line 222
    const-string v1, "CrossPromotion_Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request url = http://games.droidhang.com/featuredgame/gamelist_android.php postJson ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
