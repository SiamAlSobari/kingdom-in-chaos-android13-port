.class Lcom/applovin/impl/sdk/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cs;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cs;

    iget-object v0, v0, Lcom/applovin/impl/sdk/cs;->g:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report reward for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cs;

    invoke-static {v3}, Lcom/applovin/impl/sdk/cs;->a(Lcom/applovin/impl/sdk/cs;)Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cs;

    iget-object v0, v0, Lcom/applovin/impl/sdk/cs;->g:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reported reward successfully for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ct;->a:Lcom/applovin/impl/sdk/cs;

    invoke-static {v3}, Lcom/applovin/impl/sdk/cs;->a(Lcom/applovin/impl/sdk/cs;)Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
