.class public Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location$Factory;
.super Lcom/vungle/publisher/protocol/message/MessageFactory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/MessageFactory",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/bz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/MessageFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    new-array v0, p1, [Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;
    .locals 4

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location$Factory;->a:Lcom/vungle/publisher/bz;

    invoke-interface {v1}, Lcom/vungle/publisher/bz;->b()Landroid/location/Location;

    move-result-object v1

    .line 176
    if-nez v1, :cond_0

    .line 177
    const-string v1, "VungleProtocol"

    const-string v2, "detailed location not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;-><init>()V

    .line 181
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->a:Ljava/lang/Float;

    .line 182
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->b:Ljava/lang/Double;

    .line 183
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->c:Ljava/lang/Double;

    .line 184
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->d:Ljava/lang/Float;

    .line 185
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestAd$Demographic$Location;->e:Ljava/lang/Long;

    goto :goto_0
.end method
