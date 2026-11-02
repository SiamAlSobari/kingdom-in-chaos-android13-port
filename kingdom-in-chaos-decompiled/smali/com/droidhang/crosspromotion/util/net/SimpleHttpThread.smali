.class public Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;
.super Ljava/lang/Thread;
.source "SimpleHttpThread.java"


# static fields
.field private static final BYTES_BLOCK:I = 0x400

.field public static final LOG_TAG:Ljava/lang/String; = "SimpleHttpThread"


# instance fields
.field private tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/droidhang/crosspromotion/util/net/HttpTask;",
            ">;"
        }
    .end annotation
.end field

.field private uiThreadExecutor:Lcom/droidhang/crosspromotion/util/net/UIThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    new-instance v0, Lcom/droidhang/crosspromotion/util/net/UIThreadExecutor;

    invoke-direct {v0}, Lcom/droidhang/crosspromotion/util/net/UIThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->uiThreadExecutor:Lcom/droidhang/crosspromotion/util/net/UIThreadExecutor;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->setDaemon(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->start()V

    .line 68
    return-void
.end method

.method public postAsyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;
    .param p4, "stopThreadWhenFinished"    # Z

    .prologue
    .line 71
    new-instance v1, Lcom/droidhang/crosspromotion/util/net/HttpTask;

    invoke-direct {v1}, Lcom/droidhang/crosspromotion/util/net/HttpTask;-><init>()V

    .line 72
    .local v1, "task":Lcom/droidhang/crosspromotion/util/net/HttpTask;
    invoke-virtual {v1, p1}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->setUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, p2}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->setParam(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p3}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->setObserver(Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;)V

    .line 75
    invoke-virtual {v1, p4}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->setStopThreadWhenFinished(Z)V

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "SimpleHttpThread"

    const-string v3, "put http post task failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 86
    :goto_0
    const/16 v17, 0x0

    .line 87
    .local v17, "task":Lcom/droidhang/crosspromotion/util/net/HttpTask;
    const/4 v11, 0x0

    .line 88
    .local v11, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v9, 0x0

    .line 90
    .local v9, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/droidhang/crosspromotion/util/net/HttpTask;

    move-object/from16 v17, v0

    .line 92
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 93
    .local v10, "params":Lorg/apache/http/params/BasicHttpParams;
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 95
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 97
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    .local v12, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v18, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->getParam()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 101
    invoke-virtual {v8, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 102
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 103
    .local v15, "statusCode":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    const/16 v16, 0x1

    .line 105
    .local v16, "succeed":Z
    :goto_1
    if-nez v16, :cond_2

    .line 106
    const-string v18, "SimpleHttpThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http post failed with status code "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    move-object/from16 v7, v17

    .line 117
    .local v7, "finalTask":Lcom/droidhang/crosspromotion/util/net/HttpTask;
    move/from16 v6, v16

    .line 118
    .local v6, "finalSucceed":Z
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 119
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->uiThreadExecutor:Lcom/droidhang/crosspromotion/util/net/UIThreadExecutor;

    move-object/from16 v18, v0

    new-instance v19, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v6, v4}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;-><init>(Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;Lcom/droidhang/crosspromotion/util/net/HttpTask;Z[B)V

    invoke-virtual/range {v18 .. v19}, Lcom/droidhang/crosspromotion/util/net/UIThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual/range {v17 .. v17}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->isStopThreadWhenFinished()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v18

    if-eqz v18, :cond_3

    .line 135
    invoke-static {v9}, Lcom/droidhang/crosspromotion/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    .line 138
    return-void

    .line 104
    .end local v4    # "data":[B
    .end local v6    # "finalSucceed":Z
    .end local v7    # "finalTask":Lcom/droidhang/crosspromotion/util/net/HttpTask;
    .end local v16    # "succeed":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 108
    .restart local v16    # "succeed":Z
    :cond_2
    const/16 v18, 0x400

    :try_start_2
    move/from16 v0, v18

    new-array v3, v0, [B

    .line 109
    .local v3, "bytes":[B
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 110
    const/4 v13, 0x0

    .line 111
    .local v13, "readCount":I
    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x400

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-lez v13, :cond_0

    .line 112
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 132
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bytes":[B
    .end local v13    # "readCount":I
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "statusCode":I
    .end local v16    # "succeed":Z
    :catch_0
    move-exception v5

    move-object v11, v12

    .line 133
    .end local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v12    # "post":Lorg/apache/http/client/methods/HttpPost;
    .local v5, "e":Ljava/lang/Throwable;
    .restart local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    :try_start_3
    const-string v18, "SimpleHttpThread"

    const-string v19, "http post task failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    invoke-static {v9}, Lcom/droidhang/crosspromotion/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "data":[B
    .restart local v6    # "finalSucceed":Z
    .restart local v7    # "finalTask":Lcom/droidhang/crosspromotion/util/net/HttpTask;
    .restart local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v12    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v15    # "statusCode":I
    .restart local v16    # "succeed":Z
    :cond_3
    invoke-static {v9}, Lcom/droidhang/crosspromotion/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    move-object v11, v12

    .line 136
    .end local v12    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 135
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v6    # "finalSucceed":Z
    .end local v7    # "finalTask":Lcom/droidhang/crosspromotion/util/net/HttpTask;
    .end local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "statusCode":I
    .end local v16    # "succeed":Z
    :catchall_0
    move-exception v18

    :goto_4
    invoke-static {v9}, Lcom/droidhang/crosspromotion/util/IOUtil;->closeQuiet(Ljava/io/Closeable;)V

    throw v18

    .end local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v12    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v18

    move-object v11, v12

    .end local v12    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .line 132
    .end local v8    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "params":Lorg/apache/http/params/BasicHttpParams;
    :catch_1
    move-exception v5

    goto :goto_3
.end method
