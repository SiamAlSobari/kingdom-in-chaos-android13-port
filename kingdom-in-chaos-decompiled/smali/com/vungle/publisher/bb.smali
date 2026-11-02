.class public final Lcom/vungle/publisher/bb;
.super Landroid/webkit/WebViewClient;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/bb$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/bb$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/bb$a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vungle/publisher/bb;->a:Lcom/vungle/publisher/bb$a;

    .line 26
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:function actionClicked(m,p){ var q = prompt(\'vungle:\'+JSON.stringify({method:m,params:(p?p:null)}));if(q&&typeof q === \'string\'){return JSON.parse(q).result;}};function noTapHighlight(){var l=document.getElementsByTagName(\'*\');for(var i=0; i<l.length; i++){l[i].style.webkitTapHighlightColor=\'rgba(0,0,0,0)\';}};noTapHighlight();"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "code"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to load web view: code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/bb;->a:Lcom/vungle/publisher/bb$a;

    invoke-interface {v0}, Lcom/vungle/publisher/bb$a;->a()V

    .line 32
    return-void
.end method
