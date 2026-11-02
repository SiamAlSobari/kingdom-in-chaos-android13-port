.class public Lcom/testin/agent/e/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/testin/agent/b/a;
    .locals 12

    new-instance v8, Lcom/testin/agent/b/a;

    invoke-direct {v8}, Lcom/testin/agent/b/a;-><init>()V

    :try_start_0
    sget-object v1, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/testin/agent/c/f;->a(Landroid/content/Context;)Lcom/testin/agent/c/f;

    move-result-object v6

    invoke-static {p0}, Lcom/testin/agent/e/a;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v9, Lcom/testin/agent/c/j;

    invoke-direct {v9}, Lcom/testin/agent/c/j;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v1, 0x3e8

    div-long v1, v10, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->b(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->c(Ljava/lang/String;)V

    const-string v1, "5.1.1"

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->e(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/testin/agent/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->d(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-string v1, ""

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->l(Ljava/lang/String;)V

    sget-object v1, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v1}, Lcom/testin/agent/TestinAgentConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/testin/agent/e/f;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/testin/agent/c/f;Lorg/json/JSONObject;)V

    :cond_1
    invoke-virtual {v9}, Lcom/testin/agent/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/e/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->j(Ljava/lang/String;)V

    const-string v1, "utf-8"

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->k(Ljava/lang/String;)V

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->h(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/testin/agent/e/a;->a(J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->m(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->b(I)V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Lcom/testin/agent/b/a;->o(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/e/d;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/testin/agent/b/a;->c(I)V

    :goto_1
    return-object v8

    :pswitch_0
    const-wide/32 v4, 0x30d400

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sget-object v2, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v2}, Lcom/testin/agent/TestinAgentConfig;->isAppLogPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/testin/agent/e/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-wide/32 v4, 0x30d400

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/testin/agent/b/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/testin/agent/e/a;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/testin/agent/b/a;->g(Ljava/lang/String;)V

    sget-object v2, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v2}, Lcom/testin/agent/TestinAgentConfig;->isAppLogPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/testin/agent/e/g;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "und"

    invoke-static {p0}, Lcom/testin/agent/e/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "av"

    invoke-static {p0}, Lcom/testin/agent/e/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "on"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ov"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pgn"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sv"

    const-string v2, "2.0.7"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "chid"

    sget-object v2, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v2}, Lcom/testin/agent/TestinAgentConfig;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lot"

    invoke-static {p0}, Lcom/testin/agent/e/e;->a(Landroid/content/Context;)Lcom/testin/agent/e/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/testin/agent/e/e;->b()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-static {p0}, Lcom/testin/agent/e/e;->a(Landroid/content/Context;)Lcom/testin/agent/e/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/testin/agent/e/e;->a()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "loc"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Lcom/testin/agent/b/a;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/testin/agent/c/e;

    invoke-direct {v0}, Lcom/testin/agent/c/e;-><init>()V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->f(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->a(Lorg/json/JSONArray;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->b(Lorg/json/JSONArray;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->a(I)V

    const-string v2, "pro"

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dei"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mach"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nwt"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0}, Lcom/testin/agent/c/e;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ak"

    sget-object v2, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v2}, Lcom/testin/agent/TestinAgentConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ty"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pro"

    const-string v2, "5.1.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ac"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a()Lorg/json/JSONArray;
    .locals 8

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-static {}, Lcom/testin/agent/a/h;->a()Lcom/testin/agent/a/h;

    move-result-object v4

    iget-object v4, v4, Lcom/testin/agent/a/h;->l:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "nm"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stacktrace"

    new-instance v5, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    :cond_1
    return-object v2
.end method

.method private static a(J)Lorg/json/JSONArray;
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "une"

    sget-object v2, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v2}, Lcom/testin/agent/TestinAgentConfig;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v7, Lcom/testin/agent/a/h;->g:Lcom/testin/agent/c/d;

    const/4 v8, 0x0

    new-instance v0, Lcom/testin/agent/c/c;

    sget-wide v1, Lcom/testin/agent/a/h;->c:J

    const-string v3, "tm"

    sget-object v4, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    sget-wide v9, Lcom/testin/agent/a/h;->c:J

    invoke-virtual {v4, v9, v10}, Lcom/testin/agent/a/l;->a(J)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    sget-wide v9, Lcom/testin/agent/a/h;->c:J

    invoke-virtual {v5, v9, v10}, Lcom/testin/agent/a/a;->a(J)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/testin/agent/c/c;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8, v0}, Lcom/testin/agent/c/d;->a(ILcom/testin/agent/c/c;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bbs"

    sget-object v2, Lcom/testin/agent/a/h;->g:Lcom/testin/agent/c/d;

    invoke-virtual {v2}, Lcom/testin/agent/c/d;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lcom/testin/agent/a/h;->g:Lcom/testin/agent/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/d;->a(I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "iacs"

    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/testin/agent/a/h;->i:Lcom/testin/agent/a/a;

    invoke-virtual {v3, p0, p1}, Lcom/testin/agent/a/a;->a(J)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tacs"

    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/testin/agent/a/h;->h:Lcom/testin/agent/a/l;

    invoke-virtual {v3, p0, p1}, Lcom/testin/agent/a/l;->a(J)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_1
    invoke-static {v1}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/testin/agent/b/a;)V
    .locals 1

    new-instance v0, Lcom/testin/agent/b/b;

    invoke-direct {v0, p0}, Lcom/testin/agent/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/testin/agent/b/b;->b(Lcom/testin/agent/b/a;)Z

    return-void
.end method

.method public static b(Lcom/testin/agent/b/a;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/testin/agent/c/e;

    invoke-direct {v0}, Lcom/testin/agent/c/e;-><init>()V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->f(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->a(Lorg/json/JSONArray;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/e;->a(I)V

    const-string v2, "pro"

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dei"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mach"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nwt"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0}, Lcom/testin/agent/c/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/testin/agent/e/g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "cpu"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/testin/agent/e/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "mem"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Lcom/testin/agent/e/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "pow"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/testin/agent/e/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "tsd"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/testin/agent/e/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "asd"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/testin/agent/e/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "tssd"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/testin/agent/e/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "assd"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/testin/agent/b/a;)Z
    .locals 2

    new-instance v0, Lcom/testin/agent/b/b;

    invoke-direct {v0, p0}, Lcom/testin/agent/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/testin/agent/b/b;->a(Lcom/testin/agent/b/a;)Z

    invoke-virtual {v0}, Lcom/testin/agent/b/b;->b()I

    move-result v0

    invoke-static {p0}, Lcom/testin/agent/e/d;->e(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
