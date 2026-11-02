.class public Lcom/testin/agent/c/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/testin/agent/c/b;->a:J

    const-string v0, "NA"

    iput-object v0, p0, Lcom/testin/agent/c/b;->b:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/testin/agent/c/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/testin/agent/c/b;->d:I

    const-string v0, "NA"

    iput-object v0, p0, Lcom/testin/agent/c/b;->e:Ljava/lang/String;

    iput-wide p2, p0, Lcom/testin/agent/c/b;->a:J

    iput-object p1, p0, Lcom/testin/agent/c/b;->c:Ljava/lang/String;

    const-string v0, "5.1.1"

    iput-object v0, p0, Lcom/testin/agent/c/b;->b:Ljava/lang/String;

    const-string v0, "2.0.7"

    iput-object v0, p0, Lcom/testin/agent/c/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "ak"

    sget-object v2, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v2}, Lcom/testin/agent/TestinAgentConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tm"

    iget-wide v2, p0, Lcom/testin/agent/c/b;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pro"

    iget-object v2, p0, Lcom/testin/agent/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ac"

    iget-object v2, p0, Lcom/testin/agent/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ty"

    iget v2, p0, Lcom/testin/agent/c/b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sv"

    iget-object v2, p0, Lcom/testin/agent/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
