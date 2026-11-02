.class Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;
.super Ljava/lang/Object;
.source "JSExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static m_context:Landroid/content/Context;

.field private static final s_lock:Ljava/util/concurrent/locks/Lock;

.field private static volatile s_webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sput-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    .line 31
    sput-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->m_context:Landroid/content/Context;

    .line 33
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearWebView()V
    .locals 4

    .prologue
    .line 92
    :try_start_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 97
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    .line 98
    .local v0, "tempWebView":Landroid/webkit/WebView;
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;

    invoke-direct {v1}, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/webkit/WebView;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->m_context:Landroid/content/Context;

    if-eq v0, p0, :cond_0

    .line 43
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->TAG:Ljava/lang/String;

    const-string v1, "Mismatched context: Only application context should be used, and it should always be consistent between calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 51
    :try_start_0
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 52
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    .line 55
    sput-object p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->m_context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    :goto_1
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 65
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->TAG:Ljava/lang/String;

    goto :goto_1
.end method

.method public static hasWebView()Z
    .locals 2

    .prologue
    .line 79
    :try_start_0
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_webView:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->s_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
