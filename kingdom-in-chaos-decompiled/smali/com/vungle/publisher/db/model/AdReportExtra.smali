.class public Lcom/vungle/publisher/db/model/AdReportExtra;
.super Lcom/vungle/publisher/as;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/AdReportExtra$Factory;
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
.field a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Lcom/vungle/publisher/db/model/AdReportExtra$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/as;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-string v1, "ad_report_id"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    :cond_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "value"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/as$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->d:Lcom/vungle/publisher/db/model/AdReportExtra$Factory;

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "ad_report_extra"

    return-object v0
.end method

.method protected final p()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0}, Lcom/vungle/publisher/as;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string v1, "ad_report_id"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->a:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 66
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 67
    const-string v1, "value"

    iget-object v2, p0, Lcom/vungle/publisher/db/model/AdReportExtra;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/as;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 68
    return-object v0
.end method
