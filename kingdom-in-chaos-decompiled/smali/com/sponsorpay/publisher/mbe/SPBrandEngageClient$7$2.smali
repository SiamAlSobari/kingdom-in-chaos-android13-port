.class Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7$2;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;->processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7$2;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoEventOccured(Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;Ljava/util/Map;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p3, "contextData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    if-ne p2, v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7$2;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    move-result-object v1

    const-string v2, "STARTED"

    invoke-static {v1, v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$18(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 753
    :cond_0
    const-string v1, "%s(\'play\', {tpn:\'%s\', id:%s, result:\'%s\'})"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 754
    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "id"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 753
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "url":Ljava/lang/String;
    const-string v1, "SPBrandEngageClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notifying - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7$2;->this$1:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;->access$0(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient$7;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->access$19(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Ljava/lang/String;)V

    .line 757
    return-void
.end method
