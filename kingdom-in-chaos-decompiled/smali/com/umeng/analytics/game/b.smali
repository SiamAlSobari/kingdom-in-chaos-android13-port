.class public Lcom/umeng/analytics/game/b;
.super Ljava/lang/Object;
.source "GameState.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/umeng/analytics/game/b;->c:Ljava/lang/String;

    .line 22
    return-void
.end method
