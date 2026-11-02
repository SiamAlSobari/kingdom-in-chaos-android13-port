.class final Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;
.super Landroid/os/AsyncTask;
.source "JSExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView;->clearWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/webkit/WebView;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private m_webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs doInBackground([Landroid/webkit/WebView;)Ljava/lang/Void;
    .locals 1
    .param p1, "webviews"    # [Landroid/webkit/WebView;

    .prologue
    .line 105
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->m_webview:Landroid/webkit/WebView;

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method private onPostExecute$a83c79c()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->m_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->m_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 115
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, [Landroid/webkit/WebView;

    .end local p1    # "x0":[Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->m_webview:Landroid/webkit/WebView;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->m_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/SingletonWebView$1;->m_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
