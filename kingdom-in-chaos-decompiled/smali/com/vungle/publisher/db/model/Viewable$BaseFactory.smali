.class public abstract Lcom/vungle/publisher/db/model/Viewable$BaseFactory;
.super Lcom/vungle/publisher/as$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/Viewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/db/model/Ad",
        "<TA;TV;TR;>;W:",
        "Lcom/vungle/publisher/db/model/Viewable",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/db/model/Video",
        "<TA;TV;TR;>;R:",
        "Lcom/vungle/publisher/protocol/message/RequestAdResponse;",
        ">",
        "Lcom/vungle/publisher/as$a",
        "<TW;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/vungle/publisher/as$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/db/model/Viewable;Z)Lcom/vungle/publisher/db/model/Viewable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;Z)TW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 130
    .line 131
    iget-object v0, p1, Lcom/vungle/publisher/db/model/Viewable;->s:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 132
    iget-object v10, p1, Lcom/vungle/publisher/db/model/Viewable;->q:Lcom/vungle/publisher/at$b;

    .line 135
    :try_start_0
    iget-object v6, p1, Lcom/vungle/publisher/db/model/Viewable;->o:Ljava/lang/String;

    .line 137
    if-nez v5, :cond_2

    .line 138
    if-nez v6, :cond_1

    .line 139
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to fetch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": no id or ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v8

    move-object v1, v8

    .line 156
    :goto_0
    if-eqz v1, :cond_3

    .line 157
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 158
    packed-switch v2, :pswitch_data_0

    .line 168
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " records for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 142
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 143
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const/4 v2, 0x0

    const-string v3, "ad_id = ? AND type = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v9

    goto/16 :goto_0

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 151
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    move-object v0, v9

    goto/16 :goto_0

    .line 160
    :pswitch_0
    :try_start_3
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_4
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetched "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v8

    .line 163
    :pswitch_1
    :try_start_4
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "have "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    invoke-virtual {p0, p1, v1, p2}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 173
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/as;Landroid/database/Cursor;)Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lcom/vungle/publisher/db/model/Viewable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;",
            "Landroid/database/Cursor;",
            "Z)TW;"
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/Viewable;->s:Ljava/lang/Object;

    .line 184
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/Viewable;->o:Ljava/lang/String;

    .line 185
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/at$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/aq;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/at$a;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/Viewable;->p:Lcom/vungle/publisher/at$a;

    .line 186
    const-string v0, "type"

    const-class v1, Lcom/vungle/publisher/at$b;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/aq;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/at$b;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/Viewable;->q:Lcom/vungle/publisher/at$b;

    .line 187
    return-object p1
.end method

.method protected final a(Ljava/lang/String;Lcom/vungle/publisher/at$b;Z)Lcom/vungle/publisher/db/model/Viewable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/at$b;",
            "Z)TW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->c_()Lcom/vungle/publisher/as;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/Viewable;

    .line 124
    iput-object p1, v0, Lcom/vungle/publisher/db/model/Viewable;->o:Ljava/lang/String;

    .line 125
    iput-object p2, v0, Lcom/vungle/publisher/db/model/Viewable;->q:Lcom/vungle/publisher/at$b;

    .line 126
    invoke-direct {p0, v0, p3}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->a(Lcom/vungle/publisher/db/model/Viewable;Z)Lcom/vungle/publisher/db/model/Viewable;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Viewable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TW;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/Viewable$BaseFactory;->c_()Lcom/vungle/publisher/as;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/Viewable;

    .line 115
    iput-object p1, v0, Lcom/vungle/publisher/db/model/Viewable;->u:Lcom/vungle/publisher/db/model/Ad;

    .line 116
    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestAdResponse;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/Viewable;->o:Ljava/lang/String;

    .line 117
    sget-object v1, Lcom/vungle/publisher/at$a;->a:Lcom/vungle/publisher/at$a;

    iput-object v1, v0, Lcom/vungle/publisher/db/model/Viewable;->p:Lcom/vungle/publisher/at$a;

    .line 119
    :cond_0
    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "viewable"

    return-object v0
.end method
