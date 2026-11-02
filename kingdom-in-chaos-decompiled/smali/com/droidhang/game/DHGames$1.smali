.class final Lcom/droidhang/game/DHGames$1;
.super Ljava/lang/Object;
.source "DHGames.java"

# interfaces
.implements Lcom/droidhang/util/net/SimpleHttpObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhang/game/DHGames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncHttpComplete(Z[B)V
    .locals 9
    .param p1, "succeed"    # Z
    .param p2, "bytes"    # [B

    .prologue
    .line 71
    const-string v6, "dh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v3, ""

    .line 74
    .local v3, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, p2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .end local v3    # "jsonString":Ljava/lang/String;
    .local v4, "jsonString":Ljava/lang/String;
    :try_start_1
    const-string v6, "dh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jsonString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 82
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 89
    .local v5, "key":Ljava/lang/String;
    :try_start_3
    const-string v6, "ct"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/droidhang/game/DHGames;->access$002(I)I

    .line 91
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/droidhang/game/ad/VideoLimitManager;->setTodayTime(J)V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v3, v4

    .line 111
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .restart local v3    # "jsonString":Ljava/lang/String;
    :goto_1
    return-void

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "jsonString":Ljava/lang/String;
    .restart local v4    # "jsonString":Ljava/lang/String;
    :catch_2
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v3, v4

    .line 84
    .end local v4    # "jsonString":Ljava/lang/String;
    .restart local v3    # "jsonString":Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonString":Ljava/lang/String;
    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonString":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :cond_1
    const-string v6, "adRatio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/droidhang/game/ad/AdRatioManager;->initInterstitialMap(Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v6, "videoRatio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/droidhang/game/ad/AdRatioManager;->initVideoMap(Ljava/lang/String;Z)V

    goto :goto_0

    .line 96
    :cond_3
    const-string v6, "admobb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 97
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/droidhang/game/ad/AdmobIDManager;->setAdmobBannerAdId(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    const-string v6, "admobf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 99
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/droidhang/game/ad/AdmobIDManager;->setAdmobInterstitialAdId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_5
    const-string v6, "video_limit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 101
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/droidhang/game/ad/VideoLimitManager;->setLimit(I)V

    goto/16 :goto_0

    .line 102
    :cond_6
    const-string v6, "video_limit_map"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/droidhang/game/ad/VideoLimitManager;->setLimitMap(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v5    # "key":Ljava/lang/String;
    :cond_7
    move-object v3, v4

    .line 111
    .end local v4    # "jsonString":Ljava/lang/String;
    .restart local v3    # "jsonString":Ljava/lang/String;
    goto :goto_1

    .line 76
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "jsonString":Ljava/lang/String;
    .restart local v4    # "jsonString":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "jsonString":Ljava/lang/String;
    .restart local v3    # "jsonString":Ljava/lang/String;
    goto :goto_2
.end method
