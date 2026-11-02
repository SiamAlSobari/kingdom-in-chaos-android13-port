.class public Lcom/vungle/publisher/db/model/EventTracking;
.super Lcom/vungle/publisher/as;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/EventTracking$Factory;,
        Lcom/vungle/publisher/db/model/EventTracking$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/as",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/db/model/EventTracking$a;

.field c:Ljava/lang/String;

.field d:Lcom/vungle/publisher/db/model/EventTracking$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/vungle/publisher/as;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/db/model/EventTracking;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/EventTracking;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "event"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/EventTracking;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/EventTracking$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "url"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/EventTracking;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object v1
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/as$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/db/model/EventTracking;->d:Lcom/vungle/publisher/db/model/EventTracking$Factory;

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "event_tracking"

    return-object v0
.end method

.method public final p()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0}, Lcom/vungle/publisher/as;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/EventTracking;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 98
    const-string v1, "event"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/EventTracking;->b:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 99
    const-string v1, "url"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/EventTracking;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 100
    return-object v0
.end method
