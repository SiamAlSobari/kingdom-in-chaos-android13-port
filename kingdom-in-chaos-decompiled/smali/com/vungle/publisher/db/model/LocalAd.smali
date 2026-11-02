.class public Lcom/vungle/publisher/db/model/LocalAd;
.super Lcom/vungle/publisher/db/model/Ad;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/LocalAd$1;,
        Lcom/vungle/publisher/db/model/LocalAd$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/Ad",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field A:J

.field B:Z

.field C:Z

.field D:Lcom/vungle/publisher/db/model/LocalAd$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field u:I

.field v:Ljava/lang/Long;

.field w:Ljava/lang/String;

.field x:Lcom/vungle/publisher/db/model/LocalArchive;

.field public y:I

.field z:Lcom/vungle/publisher/db/model/LocalArchive;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Lcom/vungle/publisher/db/model/LocalArchive;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->D:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->b(Lcom/vungle/publisher/db/model/LocalAd;Z)Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    return-object v0
.end method

.method public final B()[Lcom/vungle/publisher/au;
    .locals 2

    .prologue
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->A()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->k()Lcom/vungle/publisher/db/model/Video;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalVideo;

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->u()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vungle/publisher/au;

    .line 130
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/au;

    return-object v0
.end method

.method final C()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 183
    const/4 v1, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->B()[Lcom/vungle/publisher/au;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 185
    invoke-interface {v5}, Lcom/vungle/publisher/au;->u()Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v0

    .line 190
    :cond_0
    if-nez v1, :cond_3

    .line 191
    sget-object v2, Lcom/vungle/publisher/db/model/Ad$a;->a:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {p0, v2}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->B()[Lcom/vungle/publisher/au;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    sget-object v5, Lcom/vungle/publisher/at$a;->a:Lcom/vungle/publisher/at$a;

    invoke-interface {v4, v5}, Lcom/vungle/publisher/au;->a(Lcom/vungle/publisher/at$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->m()I

    .line 193
    :cond_3
    return v1
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/bo;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final a(Z)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/vungle/publisher/db/model/Ad;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 253
    const-string v1, "delete_local_content_attempts"

    iget v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v1, "expiration_timestamp_seconds"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->v:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    const-string v1, "parent_path"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "prepare_retry_count"

    iget v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v1, "received_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->A:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    return-object v0
.end method

.method public final synthetic a(Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/at;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/db/model/LocalAd;->b(Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/au;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a()Lcom/vungle/publisher/db/model/Ad$Factory;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->D:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/db/model/Ad$a;)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->j:Lcom/vungle/publisher/db/model/Ad$a;

    .line 105
    invoke-super {p0, p1}, Lcom/vungle/publisher/db/model/Ad;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 106
    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/vungle/publisher/db/model/Ad$a;->b:Lcom/vungle/publisher/db/model/Ad$a;

    if-eq p1, v0, :cond_0

    .line 107
    iget v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    .line 108
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetting prepare_retry_count from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to 0 for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    .line 112
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/db/model/LocalAd;->w:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->n:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/as$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->D:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    return-object v0
.end method

.method public final b(Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/au;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/vungle/publisher/db/model/LocalAd$1;->a:[I

    invoke-virtual {p1}, Lcom/vungle/publisher/at$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-super {p0, p1}, Lcom/vungle/publisher/db/model/Ad;->a(Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/at;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/au;

    .line 150
    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->A()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->k()Lcom/vungle/publisher/db/model/Video;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/au;

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->u()Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Ad;->l()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalArchive;->r()Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalArchive;->r()Ljava/lang/Object;

    .line 221
    :cond_1
    return-object v0
.end method

.method public final m()I
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Ad;->m()I

    move-result v0

    .line 227
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalArchive;->m()I

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/LocalArchive;->m()I

    .line 235
    :cond_1
    return v0
.end method

.method public final n()I
    .locals 4

    .prologue
    .line 240
    iget v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    .line 241
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/bo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Ad;->n()I

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to delete files for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->m()I

    .line 246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final p()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Ad;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string v1, "delete_local_content_attempts"

    iget v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 265
    const-string v1, "expiration_timestamp_seconds"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->v:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 266
    const-string v1, "parent_path"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->w:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 267
    const-string v1, "prepare_retry_count"

    iget v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 268
    const-string v1, "received_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->A:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 269
    return-object v0
.end method

.method public final synthetic r()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/db/model/LocalAd;->w:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/bo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/vungle/publisher/bo;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->n:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/vungle/publisher/db/model/LocalArchive;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd;->D:Lcom/vungle/publisher/db/model/LocalAd$Factory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Z)Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v0

    return-object v0
.end method
