void leaf() {
  __asm__("vsubss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}