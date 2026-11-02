.class Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;
.super Landroid/os/AsyncTask;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MraidHTTPTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

.field tapjoyConnection:Lcom/tapjoy/TapjoyURLConnection;

.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "x1"    # Lcom/tapjoy/mraid/view/MraidView$1;

    .prologue
    .line 2096
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2096
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 2105
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->url:Ljava/lang/String;

    .line 2109
    :try_start_0
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->tapjoyConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 2110
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->tapjoyConnection:Lcom/tapjoy/TapjoyURLConnection;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 2112
    :catch_0
    move-exception v0

    .line 2114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2096
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2125
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2127
    :cond_0
    const-string v0, "MRAIDView"

    const-string v1, "Connection not properly established"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    const-string v3, "Connection not properly established"

    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2152
    :cond_1
    :goto_0
    return-void

    .line 2136
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2138
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "302 redirectURL detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2147
    :catch_0
    move-exception v6

    .line 2149
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in loadURL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2144
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->httpResult:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;->url:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
