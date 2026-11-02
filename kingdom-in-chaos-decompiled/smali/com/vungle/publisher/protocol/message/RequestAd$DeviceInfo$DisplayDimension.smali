.class public final Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayDimension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension$Factory;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 302
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
    .line 306
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 307
    const-string v1, "height"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v1, "width"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    return-object v0
.end method
