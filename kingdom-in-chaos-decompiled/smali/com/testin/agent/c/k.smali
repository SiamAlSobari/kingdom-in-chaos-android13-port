.class public Lcom/testin/agent/c/k;
.super Lcom/testin/agent/c/b;


# instance fields
.field private b:Lcom/testin/agent/c/f;

.field private c:Lcom/testin/agent/c/j;

.field private d:Lcom/testin/agent/c/i;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/testin/agent/c/b;-><init>(Ljava/lang/String;J)V

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/c/f;->a(Landroid/content/Context;)Lcom/testin/agent/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/c/k;->b:Lcom/testin/agent/c/f;

    new-instance v0, Lcom/testin/agent/c/j;

    invoke-direct {v0}, Lcom/testin/agent/c/j;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/c/k;->c:Lcom/testin/agent/c/j;

    new-instance v0, Lcom/testin/agent/c/i;

    invoke-direct {v0}, Lcom/testin/agent/c/i;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/c/k;->d:Lcom/testin/agent/c/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-super {p0}, Lcom/testin/agent/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/testin/agent/c/k;->b:Lcom/testin/agent/c/f;

    if-eqz v1, :cond_0

    const-string v1, "dei"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/testin/agent/c/k;->b:Lcom/testin/agent/c/f;

    invoke-virtual {v3}, Lcom/testin/agent/c/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/testin/agent/c/k;->c:Lcom/testin/agent/c/j;

    if-eqz v1, :cond_1

    const-string v1, "nwt"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/testin/agent/c/k;->c:Lcom/testin/agent/c/j;

    invoke-virtual {v3}, Lcom/testin/agent/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/testin/agent/c/k;->d:Lcom/testin/agent/c/i;

    if-eqz v1, :cond_2

    const-string v1, "mach"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/testin/agent/c/k;->d:Lcom/testin/agent/c/i;

    invoke-virtual {v3}, Lcom/testin/agent/c/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/testin/agent/c/k;->f:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/testin/agent/c/k;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "iac"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v3, p0, Lcom/testin/agent/c/k;->e:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/testin/agent/c/k;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "tac"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v3, "acs"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/k;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/k;->f:Ljava/lang/String;

    return-void
.end method
