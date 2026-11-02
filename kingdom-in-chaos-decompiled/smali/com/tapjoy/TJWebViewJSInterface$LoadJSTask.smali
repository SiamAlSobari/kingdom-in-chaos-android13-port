.class Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;
.super Landroid/os/AsyncTask;
.source "TJWebViewJSInterface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJWebViewJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadJSTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJWebViewJSInterface;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V
    .locals 0
    .param p2, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->this$0:Lcom/tapjoy/TJWebViewJSInterface;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    .line 194
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 210
    const-string v1, "javascript:"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "js":Ljava/lang/String;
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 218
    .end local v0    # "js":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
