.class public Lcom/droidhang/game/ad/VideoLimitManager;
.super Ljava/lang/Object;
.source "VideoLimitManager.java"


# static fields
.field private static final DEFAULT_LIMIT_COUNT:I = 0x5

.field private static final PLAY_DAY_KEY:Ljava/lang/String; = "VIDEO_PLAY_DAY_KEY"

.field private static final PLAY_TIMES_DEFAULT_SUBKEY:Ljava/lang/String; = "default"

.field private static final PLAY_TIMES_KEY:Ljava/lang/String; = "VIDEO_PLAY_TIMES_KEY"

.field static _activity:Landroid/app/Activity;

.field private static currentPlayKey:Ljava/lang/String;

.field private static limitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static todayTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/droidhang/game/ad/VideoLimitManager;->todayTimeStamp:J

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/droidhang/game/ad/VideoLimitManager;->limitMap:Ljava/util/Map;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/droidhang/game/ad/VideoLimitManager;->currentPlayKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishDisplay()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/droidhang/game/ad/VideoLimitManager;->currentPlayKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/droidhang/game/ad/VideoLimitManager;->finishDisplay(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private static finishDisplay(Ljava/lang/String;)V
    .locals 6
    .param p0, "subkey"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v3, Lcom/droidhang/game/ad/VideoLimitManager;->_activity:Landroid/app/Activity;

    const-string v4, "VIDEO_PLAY_DAY_KEY"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "day":Ljava/lang/String;
    invoke-static {}, Lcom/droidhang/game/ad/VideoLimitManager;->getTodayKey()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "today":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "play_times":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-static {p0}, Lcom/droidhang/game/ad/VideoLimitManager;->getPlayTimes(Ljava/lang/String;)I

    move-result v1

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 145
    sget-object v3, Lcom/droidhang/game/ad/VideoLimitManager;->_activity:Landroid/app/Activity;

    const-string v4, "VIDEO_PLAY_DAY_KEY"

    invoke-static {v3, v4, v2}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p0, v1}, Lcom/droidhang/game/ad/VideoLimitManager;->setPlayTimes(Ljava/lang/String;I)V

    .line 148
    const-string v3, "dh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishDisplay(), today = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",subkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", play_times = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private static getLimitBySubKey(Ljava/lang/String;)I
    .locals 2
    .param p0, "subkey"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lcom/droidhang/game/ad/VideoLimitManager;->limitMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static getPlayTimes(Ljava/lang/String;)I
    .locals 3
    .param p0, "subkey"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO_PLAY_TIMES_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/droidhang/game/ad/VideoLimitManager;->_activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getTodayKey()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    sget-wide v2, Lcom/droidhang/game/ad/VideoLimitManager;->todayTimeStamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/droidhang/game/ad/VideoLimitManager;->setLimit(I)V

    .line 32
    sput-object p0, Lcom/droidhang/game/ad/VideoLimitManager;->_activity:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method public static setCurrentPlayKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "default"

    sput-object v0, Lcom/droidhang/game/ad/VideoLimitManager;->currentPlayKey:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sput-object p0, Lcom/droidhang/game/ad/VideoLimitManager;->currentPlayKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setLimit(I)V
    .locals 3
    .param p0, "limit"    # I

    .prologue
    .line 44
    sget-object v0, Lcom/droidhang/game/ad/VideoLimitManager;->limitMap:Ljava/util/Map;

    const-string v1, "default"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public static setLimitMap(Ljava/lang/String;)V
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "keys":[Ljava/lang/String;
    array-length v4, v2

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 63
    :cond_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 54
    aget-object v1, v2, v0

    .line 55
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 57
    .local v3, "value":I
    add-int/lit8 v4, v0, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 60
    :goto_1
    const-string v4, "dh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v4, Lcom/droidhang/game/ad/VideoLimitManager;->limitMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 58
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static setPlayTimes(Ljava/lang/String;I)V
    .locals 3
    .param p0, "subkey"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO_PLAY_TIMES_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/droidhang/game/ad/VideoLimitManager;->_activity:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public static setTodayTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 74
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    sput-wide v0, Lcom/droidhang/game/ad/VideoLimitManager;->todayTimeStamp:J

    .line 75
    return-void
.end method

.method public static shouldDisplay(Ljava/lang/String;)Z
    .locals 12
    .param p0, "subkey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    const-string p0, "default"

    .line 98
    :cond_0
    sget-object v8, Lcom/droidhang/game/ad/VideoLimitManager;->_activity:Landroid/app/Activity;

    const-string v9, "VIDEO_PLAY_DAY_KEY"

    const-string v10, ""

    invoke-static {v8, v9, v10}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "day":Ljava/lang/String;
    invoke-static {}, Lcom/droidhang/game/ad/VideoLimitManager;->getTodayKey()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "today":Ljava/lang/String;
    sget-wide v8, Lcom/droidhang/game/ad/VideoLimitManager;->todayTimeStamp:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 102
    const-string v7, "dh"

    const-string v8, "todayTimeStamp==0"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return v6

    .line 106
    :cond_1
    invoke-static {p0}, Lcom/droidhang/game/ad/VideoLimitManager;->getLimitBySubKey(Ljava/lang/String;)I

    move-result v3

    .line 108
    .local v3, "limit":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    invoke-static {p0}, Lcom/droidhang/game/ad/VideoLimitManager;->getPlayTimes(Ljava/lang/String;)I

    move-result v4

    .line 110
    .local v4, "play_times":I
    if-ge v4, v3, :cond_2

    .line 111
    const-string v6, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldDisplay(true), today = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subkey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",play_times = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", limit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    const-string v7, "dh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldDisplay(false), today = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subkey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",play_times = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", limit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v4    # "play_times":I
    :cond_3
    const-string v8, "dh"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldDisplay(true), today = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", subkey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",lastPlayDay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v8, Lcom/droidhang/game/ad/VideoLimitManager;->limitMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/droidhang/game/ad/VideoLimitManager;->setPlayTimes(Ljava/lang/String;I)V

    goto :goto_1

    .end local v2    # "item":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 127
    goto/16 :goto_0
.end method
