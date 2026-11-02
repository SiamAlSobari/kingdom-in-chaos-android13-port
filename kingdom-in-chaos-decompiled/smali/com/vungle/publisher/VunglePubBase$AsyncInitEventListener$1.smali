.class final Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;->a:Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 350
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;->a:Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->e:Lcom/vungle/publisher/env/SdkState;

    invoke-virtual {v0, v7}, Lcom/vungle/publisher/env/SdkState;->a(Z)V

    .line 351
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;->a:Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a()V

    .line 352
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;->a:Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->d:Lcom/vungle/publisher/reporting/AdReportManager;

    iget-object v1, v0, Lcom/vungle/publisher/reporting/AdReportManager;->e:Lcom/vungle/publisher/env/SdkState;

    iget-object v1, v1, Lcom/vungle/publisher/env/SdkState;->o:Landroid/content/SharedPreferences;

    const-string v2, "IsVgAppInstalled"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleReport"

    const-string v2, "install already reported"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/vungle/publisher/reporting/AdReportManager;->a()V

    .line 353
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;->a:Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;

    iget-object v6, v0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->a:Lcom/vungle/publisher/ad/AdManager;

    iget-object v0, v6, Lcom/vungle/publisher/ad/AdManager;->o:Lcom/vungle/publisher/db/model/Viewable$Factory;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    sget-object v3, Lcom/vungle/publisher/at$a;->a:Lcom/vungle/publisher/at$a;

    invoke-virtual {v3}, Lcom/vungle/publisher/at$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/db/model/Viewable$Factory;->a:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const-string v3, "status = ?"

    new-array v4, v7, [Ljava/lang/String;

    sget-object v5, Lcom/vungle/publisher/at$a;->b:Lcom/vungle/publisher/at$a;

    invoke-virtual {v5}, Lcom/vungle/publisher/at$a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/at$a;->b:Lcom/vungle/publisher/at$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " viewables to status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/at$a;->a:Lcom/vungle/publisher/at$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/vungle/publisher/ad/AdManager;->b(Z)V

    iget-object v0, v6, Lcom/vungle/publisher/ad/AdManager;->j:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/ad/AdManager$AdAvailabilityEventListener;->b()V

    .line 354
    return-void

    .line 352
    :cond_0
    const-string v1, "VungleReport"

    const-string v2, "reporting install"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vungle/publisher/reporting/AdReportManager;->d:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;

    new-instance v2, Lcom/vungle/publisher/ci;

    invoke-direct {v2}, Lcom/vungle/publisher/ci;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->c(Lcom/vungle/publisher/ci;)V

    goto :goto_0
.end method
