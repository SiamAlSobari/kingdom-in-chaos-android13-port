.class final Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;
.super Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;
.source "TrustDefenderMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->init(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initWebView:Z


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .param p3, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iput-object p4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->val$initWebView:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$000()Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$100(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->val$initWebView:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->initJSExecutor(Landroid/content/Context;ZI)Z

    .line 342
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;

    move-result-object v2

    const-string v3, "init - initJSExecutor"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$100(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->getBrowserStringFromJS()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "browserStringFromJS":Ljava/lang/String;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;

    move-result-object v2

    const-string v3, "getUserAgent"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$300(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    iput-object v3, v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    .line 352
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 354
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$400(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 355
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$400(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 357
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$400(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->setSSLSocketFactory(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V

    .line 359
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 362
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 364
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_2
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/util/TimingLogger;

    move-result-object v2

    const-string v3, "create AndroidHttpClient"

    invoke-virtual {v2, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 368
    :cond_3
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->INSTANCE:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->isAvailable()Z

    .line 369
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$500(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$500(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 375
    :cond_4
    return-void

    .line 373
    .end local v0    # "browserStringFromJS":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$500(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$500(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    throw v2
.end method
