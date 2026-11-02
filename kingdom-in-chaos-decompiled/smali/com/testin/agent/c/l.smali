.class public Lcom/testin/agent/c/l;
.super Lcom/testin/agent/c/b;


# instance fields
.field private b:Lcom/testin/agent/c/f;

.field private c:Lcom/testin/agent/c/j;

.field private d:Lcom/testin/agent/c/g;

.field private e:Lcom/testin/agent/c/i;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/testin/agent/c/b;-><init>(Ljava/lang/String;J)V

    sget-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/c/f;->a(Landroid/content/Context;)Lcom/testin/agent/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/c/l;->b:Lcom/testin/agent/c/f;

    new-instance v0, Lcom/testin/agent/c/j;

    invoke-direct {v0}, Lcom/testin/agent/c/j;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/c/l;->c:Lcom/testin/agent/c/j;

    new-instance v0, Lcom/testin/agent/c/i;

    invoke-direct {v0}, Lcom/testin/agent/c/i;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/c/l;->e:Lcom/testin/agent/c/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-super {p0}, Lcom/testin/agent/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "dei"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/testin/agent/c/l;->b:Lcom/testin/agent/c/f;

    invoke-virtual {v3}, Lcom/testin/agent/c/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/testin/agent/c/l;->c:Lcom/testin/agent/c/j;

    if-eqz v1, :cond_0

    const-string v1, "nwt"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/testin/agent/c/l;->c:Lcom/testin/agent/c/j;

    invoke-virtual {v3}, Lcom/testin/agent/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/testin/agent/c/l;->e:Lcom/testin/agent/c/i;

    if-eqz v1, :cond_1

    const-string v1, "mach"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/testin/agent/c/l;->e:Lcom/testin/agent/c/i;

    invoke-virtual {v3}, Lcom/testin/agent/c/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "{\"apm\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/testin/agent/c/l;->d:Lcom/testin/agent/c/g;

    if-eqz v2, :cond_2

    const-string v2, ",\"csc\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/testin/agent/c/l;->d:Lcom/testin/agent/c/g;

    invoke-virtual {v2}, Lcom/testin/agent/c/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "data"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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

.method public a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/testin/agent/c/a;

    invoke-direct {v3}, Lcom/testin/agent/c/a;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_6

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v8, "mnm"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;

    :goto_2
    return v0

    :cond_6
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/testin/agent/c/a;->a(Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/testin/agent/c/a;->b(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/testin/agent/c/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/testin/agent/c/l;->f:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_2
.end method
