.class public final Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayCheckpoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$PlayPercentAscendingComparator;,
        Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint$Factory;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 422
    const-string v1, "checkpoint"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v1, "urls"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    return-object v0
.end method
