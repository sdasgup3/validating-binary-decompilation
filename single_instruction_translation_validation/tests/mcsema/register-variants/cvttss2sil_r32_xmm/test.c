void leaf() {
  __asm__("cvttss2sil %xmm1, %ebx");
  }

void main() {
  leaf();
}