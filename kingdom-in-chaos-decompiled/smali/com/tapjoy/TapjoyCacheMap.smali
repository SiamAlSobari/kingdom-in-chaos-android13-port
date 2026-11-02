.class public Lcom/tapjoy/TapjoyCacheMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "TapjoyCacheMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/tapjoy/TapjoyCachedAssetData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyCacheMap"

.field private static final serialVersionUID:J = 0xcb0b22284de0473L


# instance fields
.field private _cacheLimit:I

.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "cacheLimit"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TapjoyCacheMap;->_cacheLimit:I

    .line 19
    iput-object p1, p0, Lcom/tapjoy/TapjoyCacheMap;->_context:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/tapjoy/TapjoyCacheMap;->_cacheLimit:I

    .line 21
    return-void
.end method

.method private findOldestAsset()Ljava/lang/String;
    .locals 9

    .prologue
    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .local v2, "oldestTime":J
    const-string v6, ""

    .line 31
    .local v6, "urlOfOldest":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCacheMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .local v0, "cachedAsset":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v7}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimestampInSeconds()J

    move-result-wide v4

    .line 33
    .local v4, "timestamp":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_1

    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    .line 34
    :cond_1
    move-wide v2, v4

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "urlOfOldest":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "urlOfOldest":Ljava/lang/String;
    goto :goto_0

    .line 39
    .end local v0    # "cachedAsset":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;>;"
    .end local v4    # "timestamp":J
    :cond_2
    return-object v6
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assetData"    # Lcom/tapjoy/TapjoyCachedAssetData;

    .prologue
    const/4 v2, 0x0

    .line 45
    if-nez p2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v2

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeOfDeathInSeconds()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCacheMap;->size()I

    move-result v2

    iget v3, p0, Lcom/tapjoy/TapjoyCacheMap;->_cacheLimit:I

    if-ne v2, v3, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/tapjoy/TapjoyCacheMap;->findOldestAsset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/TapjoyCacheMap;->_context:Landroid/content/Context;

    const-string v3, "tapjoyCacheData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tapjoy/TapjoyCachedAssetData;->toRawJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TapjoyCachedAssetData;

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/tapjoy/TapjoyCachedAssetData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/tapjoy/TapjoyCacheMap;->_context:Landroid/content/Context;

    const-string v4, "tapjoyCacheData"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 73
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 75
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "cachedAssetFilePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 86
    .end local v0    # "cachedAssetFilePath":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCacheMap;->remove(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/tapjoy/TapjoyCachedAssetData;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/tapjoy/TapjoyCachedAssetData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TapjoyCacheMap;->replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/tapjoy/TapjoyCachedAssetData;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lcom/tapjoy/TapjoyCachedAssetData;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/tapjoy/TapjoyCacheMap;->replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;Lcom/tapjoy/TapjoyCachedAssetData;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;Lcom/tapjoy/TapjoyCachedAssetData;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Lcom/tapjoy/TapjoyCachedAssetData;
    .param p3, "newValue"    # Lcom/tapjoy/TapjoyCachedAssetData;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
