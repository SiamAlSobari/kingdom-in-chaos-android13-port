.class public Lcom/droidhang/util/net/DHSimpleHttpThread;
.super Ljava/lang/Thread;
.source "DHSimpleHttpThread.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DHSimpleHttpThread"


# instance fields
.field private tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/droidhang/util/net/DHHttpTask;",
            ">;"
        }
    .end annotation
.end field

.field private uiThreadExecutor:Lcom/droidhang/util/net/DHUIThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/droidhang/util/net/DHSimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    new-instance v0, Lcom/droidhang/util/net/DHUIThreadExecutor;

    invoke-direct {v0}, Lcom/droidhang/util/net/DHUIThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/droidhang/util/net/DHSimpleHttpThread;->uiThreadExecutor:Lcom/droidhang/util/net/DHUIThreadExecutor;

    return-void
.end method


# virtual methods
.method public httpComplete(Lcom/droidhang/util/net/DHHttpTask;ZLjava/lang/String;)V
    .locals 2
    .param p1, "task"    # Lcom/droidhang/util/net/DHHttpTask;
    .param p2, "succeed"    # Z
    .param p3, "result"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/droidhang/util/net/DHSimpleHttpThread;->uiThreadExecutor:Lcom/droidhang/util/net/DHUIThreadExecutor;

    new-instance v1, Lcom/droidhang/util/net/DHSimpleHttpThread$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/droidhang/util/net/DHSimpleHttpThread$1;-><init>(Lcom/droidhang/util/net/DHSimpleHttpThread;Lcom/droidhang/util/net/DHHttpTask;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/droidhang/util/net/DHUIThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/droidhang/util/net/DHSimpleHttpThread;->setDaemon(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/droidhang/util/net/DHSimpleHttpThread;->start()V

    .line 69
    return-void
.end method

.method public postAsyncRequest(Ljava/lang/String;Ljava/util/List;Lcom/droidhang/pay/util/Purchase;Lcom/droidhang/util/net/DHSimpleHttpObserver;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "purchase"    # Lcom/droidhang/pay/util/Purchase;
    .param p4, "observer"    # Lcom/droidhang/util/net/DHSimpleHttpObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Lcom/droidhang/pay/util/Purchase;",
            "Lcom/droidhang/util/net/DHSimpleHttpObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lcom/droidhang/util/net/DHHttpTask;

    invoke-direct {v2}, Lcom/droidhang/util/net/DHHttpTask;-><init>()V

    .line 73
    .local v2, "task":Lcom/droidhang/util/net/DHHttpTask;
    invoke-virtual {v2, p1}, Lcom/droidhang/util/net/DHHttpTask;->setUrl(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, p3}, Lcom/droidhang/util/net/DHHttpTask;->setPurchase(Lcom/droidhang/pay/util/Purchase;)V

    .line 77
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/droidhang/util/net/DHHttpTask;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-virtual {v2, p4}, Lcom/droidhang/util/net/DHHttpTask;->setObserver(Lcom/droidhang/util/net/DHSimpleHttpObserver;)V

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/droidhang/util/net/DHSimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v3, "DHSimpleHttpThread"

    const-string v4, "UnsupportedEncodingException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "DHSimpleHttpThread"

    const-string v4, "put http post task failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 92
    :goto_0
    const/4 v9, 0x0

    .line 93
    .local v9, "task":Lcom/droidhang/util/net/DHHttpTask;
    const/4 v3, 0x0

    .line 94
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v6, ""

    .line 96
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/droidhang/util/net/DHSimpleHttpThread;->tasksQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/droidhang/util/net/DHHttpTask;

    move-object v9, v0

    .line 97
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 98
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v9}, Lcom/droidhang/util/net/DHHttpTask;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    invoke-virtual {v9}, Lcom/droidhang/util/net/DHHttpTask;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 101
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 103
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 104
    .local v7, "statusCode":I
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_0

    const/4 v8, 0x1

    .line 105
    .local v8, "succeed":Z
    :goto_1
    if-nez v8, :cond_1

    .line 106
    const-string v10, "DHSimpleHttpThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http post failed with status code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_2
    invoke-virtual {p0, v9, v8, v6}, Lcom/droidhang/util/net/DHSimpleHttpThread;->httpComplete(Lcom/droidhang/util/net/DHHttpTask;ZLjava/lang/String;)V

    move-object v3, v4

    .line 117
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .end local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "succeed":Z
    .restart local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    move v8, v11

    .line 104
    goto :goto_1

    .line 108
    .restart local v8    # "succeed":Z
    :cond_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    const-string v12, "utf-8"

    invoke-static {v10, v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_2

    .line 113
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "succeed":Z
    .restart local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    :goto_3
    const-string v10, "DHSimpleHttpThread"

    const-string v12, "http post task failed"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v10, ""

    invoke-virtual {p0, v9, v11, v10}, Lcom/droidhang/util/net/DHSimpleHttpThread;->httpComplete(Lcom/droidhang/util/net/DHHttpTask;ZLjava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3
.end method
