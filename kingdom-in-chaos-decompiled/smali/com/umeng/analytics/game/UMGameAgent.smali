.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;
.source "UMGameAgent.java"


# static fields
.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/umeng/analytics/game/c;

    invoke-direct {v0}, Lcom/umeng/analytics/game/c;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 272
    if-nez p0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bonus(DI)V
    .locals 2

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 241
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    if-lez p2, :cond_1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    .line 246
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/c;->a(DI)V

    goto :goto_0
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .locals 6

    .prologue
    .line 253
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 259
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    if-lez p4, :cond_3

    const/16 v0, 0x64

    if-lt p4, v0, :cond_4

    .line 264
    :cond_3
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_4
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static buy(Ljava/lang/String;ID)V
    .locals 2

    .prologue
    .line 202
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 208
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method public static failLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 136
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 120
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public static pay(DDI)V
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 157
    if-lez p4, :cond_0

    const/16 v0, 0x64

    if-lt p4, v0, :cond_1

    .line 158
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_1
    cmpg-double v0, p0, v1

    if-ltz v0, :cond_2

    cmpg-double v0, p2, v1

    if-gez v0, :cond_3

    .line 163
    :cond_2
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_3
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/game/c;->a(DDI)V

    goto :goto_0
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .locals 8

    .prologue
    const-wide/16 v1, 0x0

    .line 178
    if-lez p6, :cond_0

    const/16 v0, 0x64

    if-lt p6, v0, :cond_1

    .line 179
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_1
    cmpg-double v0, p0, v1

    if-ltz v0, :cond_2

    if-ltz p3, :cond_2

    cmpg-double v0, p4, v1

    if-gez v0, :cond_3

    .line 184
    :cond_2
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_4
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/c;->a(DLjava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static setPlayerInfo(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 35
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "MobclickAgent"

    const-string v3, "Input string is null or empty"

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    .line 41
    :cond_0
    if-ltz p1, :cond_1

    const/16 v2, 0xc8

    if-le p1, v2, :cond_2

    .line 42
    :cond_1
    const-string v2, "MobclickAgent"

    const-string v3, "The int value for \'Age\' range between 0~200"

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 47
    :cond_2
    invoke-static {p3}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    const-string v0, "MobclickAgent"

    const-string v2, "Input string is null or empty"

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v1

    .line 53
    :cond_3
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-static {p2}, Lcom/umeng/analytics/Gender;->getGender(I)Lcom/umeng/analytics/Gender;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ILcom/umeng/analytics/Gender;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static setPlayerLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 63
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTraceSleepTime(Z)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Z)V

    .line 28
    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 104
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static use(Ljava/lang/String;ID)V
    .locals 2

    .prologue
    .line 221
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 227
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "Input value type is negative"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;ID)V

    goto :goto_0
.end method
