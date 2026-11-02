.class public Lcom/tapjoy/TapjoyCache;
.super Ljava/lang/Object;
.source "TapjoyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyCache$CacheAssetThread;
    }
.end annotation


# static fields
.field private static final CACHE_CONNECT_TIMEOUT:I = 0x3a98

.field public static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "Tapjoy/Cache/"

.field public static final CACHE_LIMIT:I = -0x1

.field private static final CACHE_READ_TIMEOUT:I = 0x7530

.field private static final DEFAULT_TIME_TO_LIVE:J = 0x15180L

.field private static final NUMBER_OF_THREDS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TapjoyCache"

.field private static _instance:Lcom/tapjoy/TapjoyCache;

.field public static unit_test_mode:Z


# instance fields
.field private _cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

.field private _context:Landroid/content/Context;

.field private _currentlyDownloading:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _eventPreloadCount:I

.field private _eventPreloadLimit:I

.field private _tajoyCacheDir:Ljava/io/File;

.field private _verboseDebugging:Z

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyCache;->unit_test_mode:Z

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    .line 61
    sget-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TapjoyCache;->unit_test_mode:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    sput-object p0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    .line 63
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/tapjoy/TapjoyCacheMap;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/TapjoyCacheMap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    .line 68
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->executor:Ljava/util/concurrent/ExecutorService;

    .line 72
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->init()V

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyCache;->_verboseDebugging:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    return-object v0
.end method

.method private getHashFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "assetURLString"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 295
    const-string v0, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyCache;
    .locals 1

    .prologue
    .line 511
    sget-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->removeOldCacheDataFromDevice()V

    .line 81
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Tapjoy/Cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    .line 84
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCache;->loadCachedAssets()V

    .line 97
    return-void

    .line 88
    :cond_1
    const-string v0, "TapjoyCache"

    const-string v1, "Error initalizing cache"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    goto :goto_0
.end method

.method private loadCachedAssets()V
    .locals 15

    .prologue
    .line 105
    iget-object v9, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    const-string v10, "tapjoyCacheData"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, "cacheMetaData":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 108
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 110
    .local v2, "cacheSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 111
    .local v4, "cachedItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v7, Ljava/io/File;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 115
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "assetFileJSON":Ljava/lang/String;
    invoke-static {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->fromRawJSONString(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v3

    .line 118
    .local v3, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    if-eqz v3, :cond_4

    .line 120
    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "urlHash":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 123
    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeOfDeathInSeconds()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 124
    iget-boolean v9, p0, Lcom/tapjoy/TapjoyCache;->_verboseDebugging:Z

    if-eqz v9, :cond_1

    .line 125
    const-string v9, "TapjoyCache"

    const-string v10, "Asset expired, removing from cache"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 128
    new-instance v9, Ljava/io/File;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v9, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v9, v8, v3}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    goto/16 :goto_0

    .line 135
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 139
    .end local v8    # "urlHash":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 144
    .end local v0    # "assetFileJSON":Ljava/lang/String;
    .end local v3    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 147
    .end local v4    # "cachedItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "tempFile":Ljava/io/File;
    :cond_6
    return-void
.end method

.method private removeOldCacheDataFromDevice()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 160
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tjcache/tmp/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 162
    :cond_0
    return-void
.end method

.method public static setInstance(Lcom/tapjoy/TapjoyCache;)V
    .locals 0
    .param p0, "cache"    # Lcom/tapjoy/TapjoyCache;

    .prologue
    .line 520
    sput-object p0, Lcom/tapjoy/TapjoyCache;->_instance:Lcom/tapjoy/TapjoyCache;

    .line 521
    return-void
.end method


# virtual methods
.method public cacheAssetFromJSONObject(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "assetData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "assetURL":Ljava/lang/String;
    const-string v0, ""

    .line 241
    .local v0, "assetOfferId":Ljava/lang/String;
    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 243
    .local v1, "assetTimeToLive":Ljava/lang/Long;
    const-string v4, "offerId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v4, "timeToLive"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 249
    .end local v0    # "assetOfferId":Ljava/lang/String;
    .end local v1    # "assetTimeToLive":Ljava/lang/Long;
    .end local v2    # "assetURL":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 247
    :catch_0
    move-exception v3

    .line 249
    .local v3, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "assetURLString"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "timeToLive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .local v0, "assetURL":Ljava/net/URL;
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "urlHash":Ljava/lang/String;
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    .end local v0    # "assetURL":Ljava/net/URL;
    .end local v2    # "urlHash":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 267
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    .line 278
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "assetURL":Ljava/net/URL;
    .restart local v2    # "urlHash":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/tapjoy/TapjoyCache;->startCachingThread(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v3

    goto :goto_0
.end method

.method public cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCacheNotifier;)V
    .locals 1
    .param p1, "assetGroup"    # Lorg/json/JSONArray;
    .param p2, "tapjoyCacheNotifier"    # Lcom/tapjoy/TapjoyCacheNotifier;

    .prologue
    .line 171
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 173
    new-instance v0, Lcom/tapjoy/TapjoyCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TapjoyCache$1;-><init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCacheNotifier;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache$1;->start()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    if-eqz p2, :cond_0

    .line 223
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/tapjoy/TapjoyCacheNotifier;->cachingComplete(I)V

    goto :goto_0
.end method

.method public cachedAssetsToJSON()Ljava/lang/String;
    .locals 6

    .prologue
    .line 406
    iget-object v4, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 408
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 410
    .local v0, "data":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->toRawJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public clearTapjoyCache()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 318
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    :cond_0
    new-instance v0, Lcom/tapjoy/TapjoyCacheMap;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyCacheMap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    .line 323
    return-void
.end method

.method public decrementEventCacheCount()V
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 483
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    if-gez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache;->printEventCacheInformation()V

    .line 487
    return-void
.end method

.method public getCachedData()Lcom/tapjoy/TapjoyCacheMap;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    return-object v0
.end method

.method public getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "urlHash":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 366
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCachedOfferIDs()Ljava/lang/String;
    .locals 6

    .prologue
    .line 426
    const-string v4, ""

    .line 427
    .local v4, "params":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v2, "offerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    if-eqz v5, :cond_2

    .line 430
    iget-object v5, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 432
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 434
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyCachedAssetData;->getOfferId()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "offerId":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    .end local v3    # "offerId":Ljava/lang/String;
    :cond_1
    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;>;"
    :cond_2
    return-object v4
.end method

.method public getEventPreloadCount()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    return v0
.end method

.method public getEventPreloadLimit()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    return v0
.end method

.method public getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "urlHash":Ljava/lang/String;
    const-string v3, ""

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v3, v2}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 389
    .local v0, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "cachedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalURL()Ljava/lang/String;

    move-result-object p1

    .line 397
    .end local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v1    # "cachedFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p1

    .line 393
    .restart local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .restart local v1    # "cachedFile":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public incrementEventCacheCount()V
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 471
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    iget v1, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    if-le v0, v1, :cond_0

    .line 473
    iget v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    iput v0, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadCount:I

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache;->printEventCacheInformation()V

    .line 476
    return-void
.end method

.method public isURLCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURLDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "urlHash":Ljava/lang/String;
    const-string v2, ""

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->_currentlyDownloading:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 344
    .end local v0    # "urlHash":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public printCacheInformation()V
    .locals 4

    .prologue
    .line 500
    const-string v0, "TapjoyCache"

    const-string v1, "------------- Cache Data -------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "TapjoyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of files in cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCacheMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "TapjoyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->_tajoyCacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->fileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "TapjoyCache"

    const-string v1, "--------------------------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public printEventCacheInformation()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public removeAssetFromCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyCache;->getHashFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "urlHash":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->_cachedAssets:Lcom/tapjoy/TapjoyCacheMap;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEventPreloadLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 449
    iput p1, p0, Lcom/tapjoy/TapjoyCache;->_eventPreloadLimit:I

    .line 450
    return-void
.end method

.method public startCachingThread(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .locals 7
    .param p1, "assetURL"    # Ljava/net/URL;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "timeToLive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v6, p0, Lcom/tapjoy/TapjoyCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyCache$CacheAssetThread;-><init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
