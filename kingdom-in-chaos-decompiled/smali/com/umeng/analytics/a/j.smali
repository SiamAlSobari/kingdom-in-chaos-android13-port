.class public Lcom/umeng/analytics/a/j;
.super Ljava/lang/Object;
.source "LogBody.java"

# interfaces
.implements Lcom/umeng/analytics/a/h;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    .line 29
    const-string v0, "launch"

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->g:Ljava/lang/String;

    .line 30
    const-string v0, "terminate"

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->h:Ljava/lang/String;

    .line 31
    const-string v0, "error"

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->i:Ljava/lang/String;

    .line 32
    const-string v0, "event"

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->j:Ljava/lang/String;

    .line 33
    const-string v0, "ekv"

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->k:Ljava/lang/String;

    .line 34
    const-string v0, "gkv"

    iput-object v0, p0, Lcom/umeng/analytics/a/j;->l:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 212
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 217
    :try_start_0
    new-instance v4, Lcom/umeng/analytics/a/k;

    invoke-direct {v4, p0, v0}, Lcom/umeng/analytics/a/k;-><init>(Lcom/umeng/analytics/a/j;Lcom/umeng/analytics/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 226
    :goto_1
    if-nez v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v4, "MobclickAgent"

    const-string v6, "Fail to write json ..."

    invoke-static {v4, v6, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    .line 229
    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 232
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 234
    :cond_2
    :goto_3
    return-object v2

    :cond_3
    move-object v2, v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    return-void

    .line 305
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 308
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 310
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 311
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/b;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/b;->a(Lcom/umeng/analytics/a/b;)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 319
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 320
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/b;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/b;->a(Lcom/umeng/analytics/a/b;)V

    goto :goto_1

    .line 323
    :cond_4
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 328
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 330
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 331
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 109
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 110
    new-instance v2, Lcom/umeng/analytics/a/i;

    invoke-direct {v2}, Lcom/umeng/analytics/a/i;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/i;->a(Lorg/json/JSONObject;)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/j;->a(Lcom/umeng/analytics/a/i;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 123
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 124
    new-instance v2, Lcom/umeng/analytics/a/n;

    invoke-direct {v2}, Lcom/umeng/analytics/a/n;-><init>()V

    .line 126
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/n;->a(Lorg/json/JSONObject;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/j;->a(Lcom/umeng/analytics/a/n;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 137
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 138
    new-instance v2, Lcom/umeng/analytics/a/e;

    invoke-direct {v2}, Lcom/umeng/analytics/a/e;-><init>()V

    .line 140
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/e;->a(Lorg/json/JSONObject;)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/j;->a(Lcom/umeng/analytics/a/e;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 151
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    new-instance v2, Lcom/umeng/analytics/a/b;

    invoke-direct {v2}, Lcom/umeng/analytics/a/b;-><init>()V

    .line 154
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/b;->a(Lorg/json/JSONObject;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/j;->a(Lcom/umeng/analytics/a/b;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 165
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    new-instance v2, Lcom/umeng/analytics/a/b;

    invoke-direct {v2}, Lcom/umeng/analytics/a/b;-><init>()V

    .line 168
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/b;->a(Lorg/json/JSONObject;)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/j;->b(Lcom/umeng/analytics/a/b;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 179
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 180
    new-instance v2, Lcom/umeng/analytics/a/d;

    invoke-direct {v2}, Lcom/umeng/analytics/a/d;-><init>()V

    .line 182
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/d;->a(Lorg/json/JSONObject;)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/j;->a(Lcom/umeng/analytics/a/d;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/a/b;)V
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/d;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/e;)V
    .locals 1

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/i;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/j;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 295
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 296
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/n;)V
    .locals 1

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    .locals 3

    .prologue
    .line 64
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 66
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 68
    iget-object v2, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/umeng/analytics/a/b;

    invoke-direct {v1, p1, p2}, Lcom/umeng/analytics/a/b;-><init>(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/j;->c(Lorg/json/JSONObject;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/j;->d(Lorg/json/JSONObject;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/j;->e(Lorg/json/JSONObject;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/j;->f(Lorg/json/JSONObject;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/j;->h(Lorg/json/JSONObject;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/j;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "MobclickAgent"

    const-string v2, "merge log body eror"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 261
    invoke-interface {v0}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 284
    :goto_0
    return v0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 264
    invoke-interface {v0}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 267
    invoke-interface {v0}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 270
    invoke-interface {v0}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 274
    invoke-interface {v0}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_0

    .line 277
    :cond_9
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 278
    invoke-interface {v0}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto/16 :goto_0

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 284
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 338
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 339
    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 340
    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 343
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 344
    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 345
    goto :goto_1

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 348
    iget-object v1, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    iget-object v1, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    iget-object v1, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    return v0
.end method

.method public b(Lcom/umeng/analytics/a/b;)V
    .locals 1

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    .locals 3

    .prologue
    .line 79
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/h;

    .line 81
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 83
    iget-object v2, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/umeng/analytics/a/b;

    invoke-direct {v1, p1, p2}, Lcom/umeng/analytics/a/b;-><init>(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    .line 245
    iget-object v4, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    .line 246
    iget-object v5, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/umeng/analytics/a/j;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v5

    .line 248
    if-eqz v0, :cond_0

    const-string v6, "launch"

    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "terminate"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "event"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "error"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :cond_3
    if-eqz v4, :cond_4

    const-string v0, "ekv"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_4
    if-eqz v5, :cond_5

    const-string v0, "gkv"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_5
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 361
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    return-void
.end method
