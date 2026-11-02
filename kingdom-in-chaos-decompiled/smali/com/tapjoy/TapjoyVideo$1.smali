.class Lcom/tapjoy/TapjoyVideo$1;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideo;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 152
    const/4 v4, 0x0

    .line 155
    .local v4, "returnValue":Z
    new-instance v5, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v5}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "videos?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v3

    .line 158
    .local v3, "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v5, v3, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 160
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    iget-object v6, v3, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyVideo;->access$000(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)Z

    move-result v4

    .line 164
    :cond_0
    if-eqz v4, :cond_3

    .line 167
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideo;->access$100(Lcom/tapjoy/TapjoyVideo;)Z

    .line 170
    const-string v5, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    if-eqz v5, :cond_1

    const-string v5, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 175
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v5, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "fileURL":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 178
    .local v0, "connection":Ljava/net/URLConnection;
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 179
    const/16 v5, 0x61a8

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 180
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 182
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideo;->access$202(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 184
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "fileURL":Ljava/net/URL;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideo;->access$300(Lcom/tapjoy/TapjoyVideo;)V

    .line 196
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyVideo;->access$402(Lcom/tapjoy/TapjoyVideo;Z)Z

    .line 201
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideo;->access$500(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    const-string v5, "TapjoyVideo"

    const-string v6, "trying to cache because of cache_auto flag..."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyVideo;->cacheVideos()V

    .line 207
    :cond_2
    const-string v5, "TapjoyVideo"

    const-string v6, "------------------------------"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "TapjoyVideo"

    const-string v6, "------------------------------"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v5, "TapjoyVideo"

    const-string v6, "INIT DONE!"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v5, "TapjoyVideo"

    const-string v6, "------------------------------"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideo;->videoNotifierError(I)V

    goto :goto_1
.end method
