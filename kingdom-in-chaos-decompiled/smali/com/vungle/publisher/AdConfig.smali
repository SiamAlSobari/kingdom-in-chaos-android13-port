.class public Lcom/vungle/publisher/AdConfig;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/a;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/b;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/vungle/publisher/b;

    invoke-direct {v0}, Lcom/vungle/publisher/b;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    .line 27
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/publisher/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getExtra1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getIncentivizedCancelDialogBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getIncentivizedCancelDialogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getIncentivizedUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lcom/vungle/publisher/Orientation;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->getPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBackButtonImmediatelyEnabled()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    return v0
.end method

.method public isImmersiveMode()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->isImmersiveMode()Z

    move-result v0

    return v0
.end method

.method public isIncentivized()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->isIncentivized()Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->isSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .locals 1
    .param p1, "isBackButtonImmediatelyEnabled"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->a(Z)V

    .line 58
    return-void
.end method

.method public setExtra1(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method public setExtra3(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public setExtra4(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 130
    return-void
.end method

.method public setExtra5(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 148
    return-void
.end method

.method public setExtra6(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method public setExtra7(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 184
    return-void
.end method

.method public setExtra8(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 201
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1
    .param p1, "isImmersiveMode"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->b(Z)V

    .line 257
    return-void
.end method

.method public setIncentivized(Z)V
    .locals 1
    .param p1, "isIncentivized"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->c(Z)V

    .line 279
    return-void
.end method

.method public setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "bodyText"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->b(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "closeButtonText"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->c(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "keepWatchingButtonText"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->d(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public setIncentivizedCancelDialogTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->e(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public setIncentivizedUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "incentivizedUserId"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->f(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setOrientation(Lcom/vungle/publisher/Orientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/vungle/publisher/Orientation;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->a(Lcom/vungle/publisher/Orientation;)V

    .line 425
    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 1
    .param p1, "placement"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->g(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 1
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 478
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/b;->d(Z)V

    .line 479
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
