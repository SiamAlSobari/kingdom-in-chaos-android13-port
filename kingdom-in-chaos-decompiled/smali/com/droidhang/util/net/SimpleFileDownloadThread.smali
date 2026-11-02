.class public Lcom/droidhang/util/net/SimpleFileDownloadThread;
.super Ljava/lang/Thread;
.source "SimpleFileDownloadThread.java"


# static fields
.field public static final BYTES_BLOCK:I = 0x400

.field public static final LOG_TAG:Ljava/lang/String; = "SimpleFileDownloadThread"


# instance fields
.field private tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/droidhang/util/net/FileDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private uiThreadExecutor:Lcom/droidhang/util/net/UIThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/droidhang/util/net/SimpleFileDownloadThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 58
    new-instance v0, Lcom/droidhang/util/net/UIThreadExecutor;

    invoke-direct {v0}, Lcom/droidhang/util/net/UIThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/droidhang/util/net/SimpleFileDownloadThread;->uiThreadExecutor:Lcom/droidhang/util/net/UIThreadExecutor;

    return-void
.end method


# virtual methods
.method public downloadFileToMemoryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/util/net/SimpleFileDownloadObserver;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileMd5Digest"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/droidhang/util/net/SimpleFileDownloadObserver;
    .param p4, "stopThreadWhenFinished"    # Z

    .prologue
    .line 66
    new-instance v1, Lcom/droidhang/util/net/FileDownloadTask;

    invoke-direct {v1}, Lcom/droidhang/util/net/FileDownloadTask;-><init>()V

    .line 67
    .local v1, "task":Lcom/droidhang/util/net/FileDownloadTask;
    invoke-virtual {v1, p1}, Lcom/droidhang/util/net/FileDownloadTask;->setUrl(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p2}, Lcom/droidhang/util/net/FileDownloadTask;->setMd5Digest(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, p3}, Lcom/droidhang/util/net/FileDownloadTask;->setObserver(Lcom/droidhang/util/net/SimpleFileDownloadObserver;)V

    .line 70
    invoke-virtual {v1, p4}, Lcom/droidhang/util/net/FileDownloadTask;->setStopThreadWhenFinished(Z)V

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/droidhang/util/net/SimpleFileDownloadThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "SimpleFileDownloadThread"

    const-string v3, "put download file task failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droidhang/util/net/SimpleFileDownloadThread;->setDaemon(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/droidhang/util/net/SimpleFileDownloadThread;->start()V

    .line 63
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 84
    :goto_0
    const/16 v18, 0x0

    .line 85
    .local v18, "request":Lorg/apache/http/client/methods/HttpGet;
    const/16 v20, 0x0

    .line 86
    .local v20, "response":Lorg/apache/http/HttpResponse;
    const/4 v13, 0x0

    .line 88
    .local v13, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/droidhang/util/net/SimpleFileDownloadThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhang/util/net/FileDownloadTask;

    .line 90
    .local v3, "task":Lcom/droidhang/util/net/FileDownloadTask;
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 91
    .local v16, "params":Lorg/apache/http/params/BasicHttpParams;
    const/16 v1, 0x2710

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    const/16 v1, 0x2710

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 94
    .local v12, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15

    .line 95
    .local v15, "md5":Ljava/security/MessageDigest;
    const-string v1, "SimpleFileDownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "start to download "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/droidhang/util/net/FileDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lcom/droidhang/util/net/FileDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v19, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 99
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 100
    .local v21, "statusCode":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0xc8

    move/from16 v0, v21

    if-ne v0, v1, :cond_0

    const/16 v22, 0x1

    .line 102
    .local v22, "succeed":Z
    :goto_1
    const/4 v14, 0x0

    .line 103
    .local v14, "isValidFile":Z
    if-nez v22, :cond_1

    .line 104
    const-string v1, "SimpleFileDownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SimpleFileDownloadManager get download file  "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "failed with status code "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_2
    move v5, v14

    .line 125
    .local v5, "finalIsValidFile":Z
    move/from16 v4, v22

    .line 126
    .local v4, "finalSucceed":Z
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 127
    .local v6, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhang/util/net/SimpleFileDownloadThread;->uiThreadExecutor:Lcom/droidhang/util/net/UIThreadExecutor;

    move-object/from16 v23, v0

    new-instance v1, Lcom/droidhang/util/net/SimpleFileDownloadThread$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/droidhang/util/net/SimpleFileDownloadThread$1;-><init>(Lcom/droidhang/util/net/SimpleFileDownloadThread;Lcom/droidhang/util/net/FileDownloadTask;ZZ[B)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Lcom/droidhang/util/net/UIThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v3}, Lcom/droidhang/util/net/FileDownloadTask;->isStopThreadWhenFinished()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-static {v13}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 143
    return-void

    .line 101
    .end local v4    # "finalSucceed":Z
    .end local v5    # "finalIsValidFile":Z
    .end local v6    # "data":[B
    .end local v14    # "isValidFile":Z
    .end local v22    # "succeed":Z
    :cond_0
    const/16 v22, 0x0

    goto :goto_1

    .line 106
    .restart local v14    # "isValidFile":Z
    .restart local v22    # "succeed":Z
    :cond_1
    const/16 v1, 0x400

    :try_start_2
    new-array v8, v1, [B

    .line 107
    .local v8, "bytes":[B
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 109
    const/16 v17, 0x0

    .line 110
    .local v17, "readCount":I
    :goto_3
    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v13, v8, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    if-lez v17, :cond_2

    .line 111
    const/4 v1, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v8, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    const/4 v1, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v8, v1, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 137
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "bytes":[B
    .end local v14    # "isValidFile":Z
    .end local v17    # "readCount":I
    .end local v21    # "statusCode":I
    .end local v22    # "succeed":Z
    :catch_0
    move-exception v9

    move-object/from16 v18, v19

    .line 138
    .end local v3    # "task":Lcom/droidhang/util/net/FileDownloadTask;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15    # "md5":Ljava/security/MessageDigest;
    .end local v16    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v19    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v9, "e":Ljava/lang/Throwable;
    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpGet;
    :goto_4
    :try_start_3
    const-string v1, "SimpleFileDownloadThread"

    const-string v2, "download file task failed"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    invoke-static {v13}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 115
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "task":Lcom/droidhang/util/net/FileDownloadTask;
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bytes":[B
    .restart local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14    # "isValidFile":Z
    .restart local v15    # "md5":Ljava/security/MessageDigest;
    .restart local v16    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v17    # "readCount":I
    .restart local v19    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v21    # "statusCode":I
    .restart local v22    # "succeed":Z
    :cond_2
    :try_start_4
    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/droidhang/util/MD5Util;->getHexDigest([B)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "hexDigeset":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/droidhang/util/net/FileDownloadTask;->getMd5Digest()Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "fileHexDigest":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const/4 v14, 0x1

    goto :goto_2

    .line 120
    :cond_3
    const-string v1, "SimpleFileDownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SimpleFileDownloadManager invalid file content "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 140
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "bytes":[B
    .end local v10    # "fileHexDigest":Ljava/lang/String;
    .end local v11    # "hexDigeset":Ljava/lang/String;
    .end local v14    # "isValidFile":Z
    .end local v17    # "readCount":I
    .end local v21    # "statusCode":I
    .end local v22    # "succeed":Z
    :catchall_0
    move-exception v1

    move-object/from16 v18, v19

    .end local v3    # "task":Lcom/droidhang/util/net/FileDownloadTask;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15    # "md5":Ljava/security/MessageDigest;
    .end local v16    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v19    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpGet;
    :goto_5
    invoke-static {v13}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    throw v1

    .end local v18    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "task":Lcom/droidhang/util/net/FileDownloadTask;
    .restart local v4    # "finalSucceed":Z
    .restart local v5    # "finalIsValidFile":Z
    .restart local v6    # "data":[B
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14    # "isValidFile":Z
    .restart local v15    # "md5":Ljava/security/MessageDigest;
    .restart local v16    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v19    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v21    # "statusCode":I
    .restart local v22    # "succeed":Z
    :cond_4
    invoke-static {v13}, Lcom/droidhang/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    move-object/from16 v18, v19

    .line 141
    .end local v19    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_0

    .line 140
    .end local v3    # "task":Lcom/droidhang/util/net/FileDownloadTask;
    .end local v4    # "finalSucceed":Z
    .end local v5    # "finalIsValidFile":Z
    .end local v6    # "data":[B
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14    # "isValidFile":Z
    .end local v15    # "md5":Ljava/security/MessageDigest;
    .end local v16    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v21    # "statusCode":I
    .end local v22    # "succeed":Z
    :catchall_1
    move-exception v1

    goto :goto_5

    .line 137
    :catch_1
    move-exception v9

    goto :goto_4
.end method
