.class public Lcom/vungle/publisher/VunglePub;
.super Lcom/vungle/publisher/VunglePubBase;
.source "vungle"


# static fields
.field public static final VERSION:Ljava/lang/String; = "VungleDroid/3.3.0"

.field private static final l:Lcom/vungle/publisher/VunglePub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/vungle/publisher/VunglePub;

    invoke-direct {v0}, Lcom/vungle/publisher/VunglePub;-><init>()V

    sput-object v0, Lcom/vungle/publisher/VunglePub;->l:Lcom/vungle/publisher/VunglePub;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vungle/publisher/VunglePub;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/vungle/publisher/VunglePub;->l:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;

    invoke-direct {v1}, Lcom/vungle/publisher/inject/AdaptiveIdOverrideModule;-><init>()V

    iget-object v0, v0, Lcom/vungle/publisher/inject/Injector;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/VunglePubBase;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public varargs addEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 0
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->addEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 87
    return-void
.end method

.method public clearEventListeners()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->clearEventListeners()V

    .line 95
    return-void
.end method

.method public getDemographic()Lcom/vungle/publisher/Demographic;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->getDemographic()Lcom/vungle/publisher/Demographic;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vungleAppId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/VunglePubBase;->init(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAdPlayable()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->isAdPlayable()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->onPause()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->onResume()V

    .line 131
    return-void
.end method

.method public playAd()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->playAd()V

    .line 141
    return-void
.end method

.method public playAd(Lcom/vungle/publisher/AdConfig;)V
    .locals 0
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 146
    return-void
.end method

.method public varargs removeEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 0
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->removeEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 116
    return-void
.end method

.method public varargs setEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 0
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 106
    return-void
.end method
