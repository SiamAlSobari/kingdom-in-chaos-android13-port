.class public Lcom/tapjoy/TapjoyCache$CacheAssetThread;
.super Ljava/lang/Object;
.source "TapjoyCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheAssetThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private _offerId:Ljava/lang/String;

.field private _timeToLive:J

.field private _url:Ljava/net/URL;

.field final synthetic this$0:Lcom/tapjoy/TapjoyCache;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V
    .locals 4
    .param p2, "assetURL"    # Ljava/net/URL;
    .param p3, "offerId"    # Ljava/lang/String;
    .param p4, "timeToLive"    # J

    .prologue
    .line 533
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    .line 535
    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_offerId:Ljava/lang/String;

    .line 536
    iput-wide p4, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    .line 538
    iget-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 539
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    .line 543
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 544
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 551
    .local v17, "urlHash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$300(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$300(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 554
    .local v5, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v6, "cachedFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 557
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$300(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/tapjoy/TapjoyCachedAssetData;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/tapjoy/TapjoyCachedAssetData;->resetTimeToLive(J)V

    .line 563
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$000(Lcom/tapjoy/TapjoyCache;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 564
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Reseting time to live for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 568
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 662
    .end local v5    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v6    # "cachedFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v18

    .line 560
    .restart local v5    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .restart local v6    # "cachedFile":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$300(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/tapjoy/TapjoyCachedAssetData;

    const-wide/32 v19, 0x15180

    invoke-virtual/range {v18 .. v20}, Lcom/tapjoy/TapjoyCachedAssetData;->resetTimeToLive(J)V

    goto :goto_0

    .line 570
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    .line 575
    .end local v5    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v6    # "cachedFile":Ljava/io/File;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v15, v18, v20

    .line 577
    .local v15, "timeCachingStarted":J
    const/4 v10, 0x0

    .line 578
    .local v10, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 582
    .local v13, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyCache;->access$400(Lcom/tapjoy/TapjoyCache;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .local v4, "assetFileLocation":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$000(Lcom/tapjoy/TapjoyCache;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 589
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Downloading and caching asset from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 596
    .local v7, "connection":Ljava/net/URLConnection;
    const/16 v18, 0x3a98

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 597
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 598
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 601
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .local v11, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 605
    .end local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v14, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-static {v11, v14}, Lcom/tapjoy/TapjoyUtil;->writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 622
    if-eqz v11, :cond_6

    .line 624
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 628
    :cond_6
    :goto_2
    if-eqz v14, :cond_7

    .line 630
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 636
    :cond_7
    :goto_3
    new-instance v12, Lcom/tapjoy/TapjoyCachedAssetData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_timeToLive:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/tapjoy/TapjoyCachedAssetData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 639
    .local v12, "newAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_offerId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_offerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/tapjoy/TapjoyCachedAssetData;->setOfferID(Ljava/lang/String;)V

    .line 644
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$300(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/tapjoy/TapjoyCacheMap;->put(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$000(Lcom/tapjoy/TapjoyCache;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 647
    const-string v18, "TapjoyCache"

    const-string v19, "------------ Asset Cached ------------"

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "File location: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "File size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Downloaded from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/tapjoy/TapjoyCachedAssetData;->getAssetURL()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cached in: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    sub-long v20, v20, v15

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " seconds"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Timestamp: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimestampInSeconds()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Time of death: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeOfDeathInSeconds()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Time to live: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/tapjoy/TapjoyCachedAssetData;->getTimeToLiveInSeconds()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " seconds"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v18, "TapjoyCache"

    const-string v19, "--------------------------------------"

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 662
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto/16 :goto_1

    .line 583
    .end local v4    # "assetFileLocation":Ljava/io/File;
    .end local v7    # "connection":Ljava/net/URLConnection;
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v12    # "newAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v9

    .line 584
    .local v9, "e1":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 585
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto/16 :goto_1

    .line 607
    .end local v9    # "e1":Ljava/lang/Exception;
    .restart local v4    # "assetFileLocation":Ljava/io/File;
    :catch_1
    move-exception v8

    .line 609
    .local v8, "e":Ljava/net/SocketTimeoutException;
    :goto_4
    :try_start_6
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Network timeout during caching: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 611
    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 612
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v18

    .line 622
    if-eqz v10, :cond_a

    .line 624
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 628
    :cond_a
    :goto_5
    if-eqz v13, :cond_1

    .line 630
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 631
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 614
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v8

    .line 616
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_9
    const-string v18, "TapjoyCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error caching asset: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TapjoyCache;->access$200(Lcom/tapjoy/TapjoyCache;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->this$0:Lcom/tapjoy/TapjoyCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->_url:Ljava/net/URL;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tapjoy/TapjoyCache;->access$100(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 619
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v18

    .line 622
    if-eqz v10, :cond_b

    .line 624
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 628
    :cond_b
    :goto_7
    if-eqz v13, :cond_1

    .line 630
    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 631
    :catch_4
    move-exception v19

    goto/16 :goto_1

    .line 622
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_8
    if-eqz v10, :cond_c

    .line 624
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 628
    :cond_c
    :goto_9
    if-eqz v13, :cond_d

    .line 630
    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 631
    :cond_d
    :goto_a
    throw v18

    .line 625
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "connection":Ljava/net/URLConnection;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v18

    goto/16 :goto_2

    .line 631
    :catch_6
    move-exception v18

    goto/16 :goto_3

    .line 625
    .end local v7    # "connection":Ljava/net/URLConnection;
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v8, "e":Ljava/net/SocketTimeoutException;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v19

    goto :goto_5

    .local v8, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v19

    goto :goto_7

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v19

    goto :goto_9

    .line 631
    :catch_a
    move-exception v19

    goto :goto_a

    .line 622
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "connection":Ljava/net/URLConnection;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v18

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 614
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v8

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_c
    move-exception v8

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 607
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v8

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_e
    move-exception v8

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache$CacheAssetThread;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
