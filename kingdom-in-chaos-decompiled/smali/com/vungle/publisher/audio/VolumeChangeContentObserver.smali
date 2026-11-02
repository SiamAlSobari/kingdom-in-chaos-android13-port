.class public final Lcom/vungle/publisher/audio/VolumeChangeContentObserver;
.super Landroid/database/ContentObserver;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/audio/VolumeChangeContentObserver$Factory;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Landroid/os/Handler;

.field private volatile c:I


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 21
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 22
    iput-object p1, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->a:Landroid/media/AudioManager;

    .line 23
    iput-object p2, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->b:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 30
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 31
    iget v0, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->c:I

    .line 32
    iget-object v1, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->a:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->c:I

    .line 33
    if-eq v1, v0, :cond_0

    .line 34
    const-string v2, "VungleDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "volume changed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 36
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 37
    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 38
    iget-object v0, p0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "VungleDevice"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
