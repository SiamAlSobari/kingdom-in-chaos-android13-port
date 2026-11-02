.class Lcom/tapjoy/mraid/view/MraidView$4;
.super Landroid/webkit/WebViewClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1079
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->access$600(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1202(Lcom/tapjoy/mraid/view/MraidView;I)I

    .line 990
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->access$600(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1302(Lcom/tapjoy/mraid/view/MraidView;I)I

    .line 991
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1400(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/controller/Utility;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->access$600(Lcom/tapjoy/mraid/view/MraidView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/controller/Utility;->init(F)V

    .line 993
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->createCloseImageButton()V

    .line 994
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$700(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v0, v1, :cond_1

    .line 995
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 997
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 967
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1058
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCache;->getCachedData()Lcom/tapjoy/TapjoyCacheMap;

    move-result-object v1

    .line 1059
    .local v1, "cachedData":Lcom/tapjoy/TapjoyCacheMap;
    invoke-virtual {v1, p2}, Lcom/tapjoy/TapjoyCacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1061
    invoke-virtual {v1, p2}, Lcom/tapjoy/TapjoyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    .line 1062
    .local v0, "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v2, "cachedFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1064
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v4, p2}, Lcom/tapjoy/mraid/view/MraidView;->access$1500(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    .line 1065
    .local v3, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v3, :cond_1

    .line 1074
    .end local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v1    # "cachedData":Lcom/tapjoy/TapjoyCacheMap;
    .end local v2    # "cachedFile":Ljava/io/File;
    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v3

    .line 1070
    .restart local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .restart local v1    # "cachedData":Lcom/tapjoy/TapjoyCacheMap;
    .restart local v2    # "cachedFile":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    .line 1074
    .end local v0    # "cachedAsset":Lcom/tapjoy/TapjoyCachedAssetData;
    .end local v1    # "cachedData":Lcom/tapjoy/TapjoyCacheMap;
    .end local v2    # "cachedFile":Ljava/io/File;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1002
    const-string v5, "MRAIDView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldOverrideUrlLoading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v5}, Lcom/tapjoy/mraid/view/MraidView;->access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lcom/tapjoy/mraid/listener/MraidViewListener;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1050
    :goto_0
    return v4

    .line 1012
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1016
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v5, "mraid"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1017
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 1019
    :cond_1
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1020
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1022
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1023
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1044
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1046
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1047
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1049
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1050
    .local v1, "e2":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 1026
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1027
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1029
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1030
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1033
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1034
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1036
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1037
    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$4;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
