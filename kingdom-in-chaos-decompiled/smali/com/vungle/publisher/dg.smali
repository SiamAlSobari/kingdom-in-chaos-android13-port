.class public final enum Lcom/vungle/publisher/dg;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/dg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/dg;

.field public static final enum b:Lcom/vungle/publisher/dg;

.field public static final enum c:Lcom/vungle/publisher/dg;

.field public static final enum d:Lcom/vungle/publisher/dg;

.field private static final synthetic e:[Lcom/vungle/publisher/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/vungle/publisher/dg;

    const-string v1, "PostThread"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/dg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/dg;

    .line 39
    new-instance v0, Lcom/vungle/publisher/dg;

    const-string v1, "MainThread"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/dg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dg;->b:Lcom/vungle/publisher/dg;

    .line 47
    new-instance v0, Lcom/vungle/publisher/dg;

    const-string v1, "BackgroundThread"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/dg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dg;->c:Lcom/vungle/publisher/dg;

    .line 56
    new-instance v0, Lcom/vungle/publisher/dg;

    const-string v1, "Async"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/dg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dg;->d:Lcom/vungle/publisher/dg;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vungle/publisher/dg;

    sget-object v1, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/dg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/dg;->b:Lcom/vungle/publisher/dg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/dg;->c:Lcom/vungle/publisher/dg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/dg;->d:Lcom/vungle/publisher/dg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vungle/publisher/dg;->e:[Lcom/vungle/publisher/dg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/dg;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/vungle/publisher/dg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dg;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/dg;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/vungle/publisher/dg;->e:[Lcom/vungle/publisher/dg;

    invoke-virtual {v0}, [Lcom/vungle/publisher/dg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/dg;

    return-object v0
.end method
