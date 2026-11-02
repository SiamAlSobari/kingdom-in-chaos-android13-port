.class public Lcom/testin/agent/c/d;
.super Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lorg/json/JSONArray;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/testin/agent/c/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/testin/agent/c/c;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "tm"

    invoke-virtual {v0}, Lcom/testin/agent/c/c;->a()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "nm"

    invoke-virtual {v0}, Lcom/testin/agent/c/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "tacs"

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/testin/agent/c/c;->c()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "iacs"

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/testin/agent/c/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/testin/agent/c/d;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILcom/testin/agent/c/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/testin/agent/c/d;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    const-string v3, "null"

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-wide v6, Lcom/testin/agent/a/h;->d:J

    sub-long/2addr v4, v6

    add-long v1, v0, v4

    new-instance v0, Lcom/testin/agent/c/c;

    sget-object v4, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    invoke-virtual {v4, v1, v2}, Lcom/testin/agent/a/l;->a(J)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    invoke-virtual {v5, v1, v2}, Lcom/testin/agent/a/a;->a(J)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/testin/agent/c/c;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/testin/agent/c/d;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/testin/agent/c/d;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/testin/agent/c/d;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v3, p1

    goto :goto_0
.end method
