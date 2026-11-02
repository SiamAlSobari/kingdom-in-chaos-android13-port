.class Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
.super Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;
.source "JSExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final jsInterfaceName:Ljava/lang/String; = "androidJSInterface"

.field private static final m_addJavascriptInterface:Ljava/lang/reflect/Method;

.field private static final m_evaluateJavascript:Ljava/lang/reflect/Method;

.field private static final m_getDefaultUserAgent:Ljava/lang/reflect/Method;

.field private static final m_removeJavascriptInterface:Ljava/lang/reflect/Method;

.field private static final m_setPluginState:Ljava/lang/reflect/Method;

.field private static final webkitVersions:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private javascriptInterfaceBroken:Z

.field private m_inited:Z

.field private m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

.field private final m_useWebView:Z

.field private m_webSettings:Landroid/webkit/WebSettings;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x2

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 150
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "evaluateJavascript"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 151
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_evaluateJavascript:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find expected function: evaluateJavascript"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "getDefaultUserAgent"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_getDefaultUserAgent:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    .line 160
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find expected function: getDefaultUserAgent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setPluginState"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/webkit/WebSettings$PluginState;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_setPluginState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_3

    .line 168
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find expected function: setPluginState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "removeJavascriptInterface"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 173
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_removeJavascriptInterface:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_4

    .line 175
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find expected function: removeJavascriptInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "addJavascriptInterface"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_addJavascriptInterface:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_5

    .line 182
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find expected function: addJavascriptInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 187
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.13"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsInterface"    # Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    .param p3, "needWebView"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 275
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;-><init>()V

    .line 129
    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    .line 130
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 131
    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 140
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    .line 280
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->isBrokenJSInterface()Z

    move-result v2

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    .line 281
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSExecutor() Build: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-eqz v2, :cond_1

    const-string v2, " busted js interface "

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " has async interface "

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 287
    iput-boolean p3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_useWebView:Z

    .line 289
    if-eqz p3, :cond_0

    .line 296
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->hasWebView()Z

    move-result v0

    .line 297
    .local v0, "hasWebView":Z
    iput-boolean v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 299
    invoke-static {p1}, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->getInstance(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    .line 300
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    if-nez v2, :cond_3

    .line 353
    .end local v0    # "hasWebView":Z
    :cond_0
    :goto_2
    return-void

    .line 281
    :cond_1
    const-string v2, " normal js interface "

    goto :goto_0

    :cond_2
    const-string v2, " has no async interface "

    goto :goto_1

    .line 307
    .restart local v0    # "hasWebView":Z
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-nez v2, :cond_4

    .line 309
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "WebView re-used from previous instance. Using a short-lived TrustDefenderMobile object is not recommended. Better profiling performance will be achieved by re-using a long-lived TrustDefenderMobile instance"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_4
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Webview "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-eqz v2, :cond_8

    const-string v2, "init\'d"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    if-nez v2, :cond_5

    .line 315
    new-instance v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-direct {v2, v4}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 316
    :cond_5
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    .line 318
    .local v1, "m_webViewClient":Landroid/webkit/WebViewClient;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    .line 319
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 322
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_setPluginState:Ljava/lang/reflect/Method;

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 326
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_6

    .line 328
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_removeJavascriptInterface:Ljava/lang/reflect/Method;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "androidJSInterface"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_6
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 334
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 337
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_7

    .line 338
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "alternate JS interface but no global latch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_7
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    goto/16 :goto_2

    .line 312
    .end local v1    # "m_webViewClient":Landroid/webkit/WebViewClient;
    :cond_8
    const-string v2, "un-init\'d"

    goto :goto_3

    .line 341
    .restart local v1    # "m_webViewClient":Landroid/webkit/WebViewClient;
    :cond_9
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_a

    .line 343
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_addJavascriptInterface:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    aput-object v5, v4, v6

    const-string v5, "androidJSInterface"

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 347
    :cond_a
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_b

    .line 348
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "broken JS interface but no global latch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_b
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 350
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-direct {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;-><init>(Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_2
.end method

.method public static getUserAgentString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 248
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 252
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "webkitVersion":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mozilla/5.0 (Linux; U; Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Build/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AppleWebKit/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (KHTML, like Gecko) Version/4.0 Mobile Safari/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobileCore;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "lang":Ljava/lang/String;
    .end local v2    # "webkitVersion":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "webkitVersion":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static hasAsyncInterface()Z
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_evaluateJavascript:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBrokenJSInterface()Z
    .locals 2

    .prologue
    .line 212
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 218
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getJSResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "js"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 424
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-nez v5, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-object v4

    .line 426
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, ""

    goto :goto_0

    .line 428
    :cond_2
    const/4 v3, 0x0

    .line 429
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-nez v5, :cond_3

    .line 435
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v3, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 436
    .restart local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v5, v3}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 439
    :cond_3
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:(function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "fullJS":Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult() attempting to execute: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iput-object v4, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    .line 450
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 452
    const/4 v2, 0x0

    .line 455
    .local v2, "invokeFailed":Z
    :try_start_0
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_evaluateJavascript:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 473
    :goto_2
    if-eqz v2, :cond_4

    .line 476
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_4

    .line 478
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult countdown for latch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v6, v6, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v6, v6, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 479
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 487
    .end local v2    # "invokeFailed":Z
    :cond_4
    :goto_3
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    if-eqz v3, :cond_9

    .line 492
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getJSResult waiting for latch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 493
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 495
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getJSResult timeout waiting for latch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 503
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 505
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 512
    :goto_5
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 441
    .end local v1    # "fullJS":Ljava/lang/String;
    :cond_6
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v5, :cond_7

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:window.androidJSInterface.getString((function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullJS":Ljava/lang/String;
    goto/16 :goto_1

    .line 444
    .end local v1    # "fullJS":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:alert((function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullJS":Ljava/lang/String;
    goto/16 :goto_1

    .line 457
    .restart local v2    # "invokeFailed":Z
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    const/4 v2, 0x1

    .line 471
    goto/16 :goto_2

    .line 462
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const/4 v2, 0x1

    .line 471
    goto/16 :goto_2

    .line 467
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 485
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "invokeFailed":Z
    :cond_8
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 500
    :cond_9
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v5, "latch == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 509
    :cond_a
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getJSResult() After latch: got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public final getUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const/4 v1, 0x0

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_getDefaultUserAgent:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "userAgent":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 242
    :goto_0
    return-object v1

    .line 234
    :cond_0
    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_useWebView:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final hasBadOptions(Z)Z
    .locals 1
    .param p1, "needWebview"    # Z

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_useWebView:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 359
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init() - init\'d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 361
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 365
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 366
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 372
    const/4 v1, 0x0

    .line 376
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 378
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 379
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    const-string v0, "<html><head></head><body onLoad=\'javascript:window.androidJSInterface.getString(1)\'></body></html>"

    .line 381
    .local v0, "html":Ljava/lang/String;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v2, v1}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 382
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iput-object v6, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    .line 388
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    invoke-virtual {v2, v0, v3, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-nez v2, :cond_5

    .line 395
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waiting for latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 398
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "timed out waiting for javascript"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    .end local v0    # "html":Ljava/lang/String;
    :cond_2
    const-string v0, "<html><head></head><body></body></html>"

    .restart local v0    # "html":Ljava/lang/String;
    goto :goto_1

    .line 402
    :cond_3
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 403
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in init() count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 407
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 411
    :cond_4
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init() After latch: got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 417
    :cond_5
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    goto/16 :goto_0
.end method
