.class public final Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAd$Demographic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location$Factory;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Float;

.field protected b:Ljava/lang/Double;

.field protected c:Ljava/lang/Double;

.field protected d:Ljava/lang/Float;

.field protected e:Ljava/lang/Long;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 153
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
    .line 157
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    const-string v1, "accuracyMeters"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "lat"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->b:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "long"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "speedMetersPerSecond"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "timestampMillis"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    return-object v0
.end method
