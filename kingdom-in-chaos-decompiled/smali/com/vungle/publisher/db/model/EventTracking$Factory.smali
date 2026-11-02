.class Lcom/vungle/publisher/db/model/EventTracking$Factory;
.super Lcom/vungle/publisher/as$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/EventTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/as$a",
        "<",
        "Lcom/vungle/publisher/db/model/EventTracking;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/vungle/publisher/as$a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;>;",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 159
    if-eqz p4, :cond_4

    array-length v0, p4

    if-lez v0, :cond_4

    .line 160
    if-eqz p4, :cond_6

    array-length v0, p4

    if-lez v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, p4, v3

    if-eqz p3, :cond_5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/EventTracking;

    iput-object p1, v0, Lcom/vungle/publisher/db/model/EventTracking;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/vungle/publisher/db/model/EventTracking;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    iput-object v5, v0, Lcom/vungle/publisher/db/model/EventTracking;->c:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 161
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 162
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p0, :cond_1

    .line 190
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/EventTracking;

    .line 193
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/EventTracking;->r()Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_1
    return-void
.end method

.method private b()Lcom/vungle/publisher/db/model/EventTracking;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/EventTracking;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/vungle/publisher/as;Landroid/database/Cursor;)Lcom/vungle/publisher/as;
    .locals 2

    .prologue
    .line 103
    check-cast p1, Lcom/vungle/publisher/db/model/EventTracking;

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/EventTracking;->s:Ljava/lang/Object;

    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/EventTracking;->a:Ljava/lang/String;

    const-string v0, "event"

    const-class v1, Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/aq;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/EventTracking$a;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/EventTracking;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/EventTracking;->c:Ljava/lang/String;

    return-object p1
.end method

.method final a(Ljava/lang/String;Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->a:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->f()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 114
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->g()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->i()[Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint;

    move-result-object v4

    .line 116
    if-eqz v4, :cond_6

    array-length v2, v4

    if-lez v2, :cond_6

    .line 117
    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 118
    iget-object v2, v6, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint;->a:Ljava/lang/Float;

    .line 119
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 122
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-nez v7, :cond_1

    .line 123
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->c:Lcom/vungle/publisher/db/model/EventTracking$a;

    .line 140
    :goto_1
    if-eqz v2, :cond_0

    .line 141
    iget-object v6, v6, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking$PlayCheckpoint;->b:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2, v6}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 117
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 125
    :cond_1
    float-to-double v7, v2

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 126
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->d:Lcom/vungle/publisher/db/model/EventTracking$a;

    goto :goto_1

    .line 128
    :cond_2
    float-to-double v7, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    .line 129
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->e:Lcom/vungle/publisher/db/model/EventTracking$a;

    goto :goto_1

    .line 131
    :cond_3
    float-to-double v7, v2

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    .line 132
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->f:Lcom/vungle/publisher/db/model/EventTracking$a;

    goto :goto_1

    .line 134
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v7

    if-nez v7, :cond_5

    .line 135
    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->h:Lcom/vungle/publisher/db/model/EventTracking$a;

    goto :goto_1

    .line 138
    :cond_5
    const-string v7, "VungleDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "invalid play percent: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    .line 147
    :cond_6
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->i:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->j:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->j()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->l:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->d()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->m:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->n:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->o:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->k()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/vungle/publisher/db/model/EventTracking$a;->k:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse$ThirdPartyAdTracking;->l()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/db/model/EventTracking$a;[Ljava/lang/String;)V

    .line 155
    :goto_2
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vungle/publisher/db/model/EventTracking$Factory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "event_tracking"

    const-string v2, "ad_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 174
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " expired event_tracking records for adId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method final b(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 226
    .line 227
    if-nez p1, :cond_1

    .line 228
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to fetch event_tracking records by ad_id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    :try_start_0
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching event_tracking records by ad_id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/vungle/publisher/db/model/EventTracking$Factory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "event_tracking"

    const/4 v2, 0x0

    const-string v3, "ad_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 237
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 238
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event_tracking for ad_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-lez v0, :cond_6

    .line 240
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 241
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->b()Lcom/vungle/publisher/db/model/EventTracking;

    move-result-object v2

    .line 243
    invoke-virtual {p0, v2, v1}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->b(Lcom/vungle/publisher/as;Landroid/database/Cursor;)Lcom/vungle/publisher/as;

    .line 244
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/vungle/publisher/db/model/EventTracking;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_4

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move-object v0, v8

    .line 249
    :goto_3
    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 249
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v0, v8

    goto :goto_3
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Lcom/vungle/publisher/db/model/EventTracking;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/EventTracking$Factory;->b()Lcom/vungle/publisher/db/model/EventTracking;

    move-result-object v0

    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "event_tracking"

    return-object v0
.end method
