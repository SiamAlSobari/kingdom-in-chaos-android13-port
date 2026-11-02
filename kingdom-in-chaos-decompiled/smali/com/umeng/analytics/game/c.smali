.class Lcom/umeng/analytics/game/c;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Lcom/umeng/analytics/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/game/c$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private C:Landroid/content/Context;

.field private a:Lcom/umeng/analytics/b;

.field private b:Lcom/umeng/analytics/game/b;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    .line 17
    new-instance v0, Lcom/umeng/analytics/game/b;

    invoke-direct {v0}, Lcom/umeng/analytics/game/b;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/analytics/game/c;->c:I

    .line 20
    iput v1, p0, Lcom/umeng/analytics/game/c;->d:I

    .line 22
    const-string v0, "game_state_file"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->e:Ljava/lang/String;

    .line 23
    const-string v0, "stat_session_start"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->f:Ljava/lang/String;

    .line 24
    const-string v0, "stat_duration"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->g:Ljava/lang/String;

    .line 25
    const-string v0, "stat_game_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->h:Ljava/lang/String;

    .line 26
    const-string v0, "stat_player_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->i:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/game/c;->j:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/analytics/game/c;->k:I

    .line 30
    iput v1, p0, Lcom/umeng/analytics/game/c;->l:I

    .line 32
    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->m:Ljava/lang/String;

    .line 33
    const-string v0, "pay"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->n:Ljava/lang/String;

    .line 34
    const-string v0, "buy"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->o:Ljava/lang/String;

    .line 35
    const-string v0, "use"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->p:Ljava/lang/String;

    .line 36
    const-string v0, "bonus"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->q:Ljava/lang/String;

    .line 38
    const-string v0, "item"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->r:Ljava/lang/String;

    .line 39
    const-string v0, "cash"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->s:Ljava/lang/String;

    .line 40
    const-string v0, "coin"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->t:Ljava/lang/String;

    .line 41
    const-string v0, "source"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->u:Ljava/lang/String;

    .line 42
    const-string v0, "amount"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->v:Ljava/lang/String;

    .line 43
    const-string v0, "user_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->w:Ljava/lang/String;

    .line 44
    const-string v0, "bonus_source"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->x:Ljava/lang/String;

    .line 46
    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->y:Ljava/lang/String;

    .line 47
    const-string v0, "status"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->z:Ljava/lang/String;

    .line 48
    const-string v0, "duration"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->A:Ljava/lang/String;

    .line 50
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->B:Ljava/lang/String;

    .line 54
    sput-boolean v1, Lcom/umeng/analytics/game/a;->a:Z

    .line 55
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Z)V
    .locals 4

    .prologue
    .line 210
    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    const-string v1, "stat_session_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 214
    if-eqz p2, :cond_0

    .line 215
    const-string v1, "stat_duration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v1, "game_state_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/game/c;->a(Landroid/content/SharedPreferences;Z)V

    .line 260
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 262
    const-string v0, "level"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v2, "level"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 268
    return-void
.end method

.method private b(Landroid/content/SharedPreferences;Z)J
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 222
    .line 224
    if-eqz p1, :cond_3

    .line 225
    const-string v0, "stat_duration"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 226
    const-string v4, "stat_session_start"

    invoke-interface {p1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    cmp-long v8, v4, v2

    if-eqz v8, :cond_0

    .line 230
    sub-long/2addr v6, v4

    .line 231
    add-long/2addr v0, v6

    .line 234
    :cond_0
    if-eqz p2, :cond_1

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 235
    const-string v4, "MobclickAgent"

    const-string v5, "Asymmetric method invoke"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 240
    if-eqz p2, :cond_2

    .line 241
    const-string v5, "stat_duration"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    :goto_0
    const-string v5, "stat_session_start"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    :goto_1
    return-wide v0

    .line 243
    :cond_2
    const-string v5, "stat_duration"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v5, "stat_game_level"

    iget-object v6, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v6, v6, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v5, "stat_player_level"

    iget-object v6, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v6, v6, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 272
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    const-string v0, "MobclickAgent"

    const-string v1, "%s(start) is not equal to %s(end)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v3, v3, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v4

    .line 289
    :cond_1
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 291
    const-string v2, "level"

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v2, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v2, "level"

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v1, "game_state_file"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    invoke-direct {p0, v0, v7}, Lcom/umeng/analytics/game/c;->b(Landroid/content/SharedPreferences;Z)J

    move-result-wide v0

    .line 284
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 285
    const-string v2, "MobclickAgent"

    const-string v3, "level duration is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    const-string v0, "MobclickAgent"

    const-string v1, "App resume from background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 328
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/a;->a:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v1, "game_state_file"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/umeng/analytics/game/c;->a(Landroid/content/SharedPreferences;Z)V

    goto :goto_0
.end method

.method a(DDI)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 130
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v0, "cash"

    mul-double v1, p1, v4

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "coin"

    mul-double v1, p3, v4

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "source"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v2, "pay"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method a(DI)V
    .locals 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 190
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v0, "coin"

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, p1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "bonus_source"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v2, "bonus"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method a(DLjava/lang/String;IDI)V
    .locals 6

    .prologue
    .line 148
    int-to-double v0, p4

    mul-double v3, p5, v0

    move-object v0, p0

    move-wide v1, p1

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/game/c;->a(DDI)V

    .line 149
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    .line 150
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    if-nez p1, :cond_1

    .line 59
    const-string v0, "MobclickAgent"

    const-string v1, "Context is null, can\'t init GameAgent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/k;)V

    .line 65
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b;->a(I)V

    .line 67
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v1, "game_state_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    const-string v2, "stat_game_level"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    const-string v2, "stat_player_level"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iput-object p1, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    .line 88
    return-void
.end method

.method a(Ljava/lang/String;ID)V
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v0, "item"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "coin"

    int-to-double v1, p2

    mul-double/2addr v1, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v4

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v2, "buy"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;IDI)V
    .locals 2

    .prologue
    .line 205
    int-to-double v0, p2

    mul-double/2addr v0, p3

    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/c;->a(DI)V

    .line 206
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    .line 207
    return-void
.end method

.method a(Ljava/lang/String;ILcom/umeng/analytics/Gender;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;ILcom/umeng/analytics/Gender;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    .line 77
    const-string v0, "MobclickAgent"

    const-string v1, "Trace sleep time : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput-boolean p1, Lcom/umeng/analytics/game/a;->a:Z

    .line 80
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 340
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/a;->a:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v1, "game_state_file"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/umeng/analytics/game/c;->b(Landroid/content/SharedPreferences;Z)J

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iput-object p1, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v0, v0, Lcom/umeng/analytics/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/umeng/analytics/game/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/umeng/analytics/game/c$a;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;ID)V
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 178
    const-string v0, "item"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "coin"

    int-to-double v1, p2

    mul-double/2addr v1, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v4

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "level"

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    const-string v2, "use"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v0, v0, Lcom/umeng/analytics/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/umeng/analytics/game/c$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/umeng/analytics/game/c$a;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->C:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v0, v0, Lcom/umeng/analytics/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/umeng/analytics/game/c$a;

    const/4 v2, -0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/umeng/analytics/game/c$a;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
