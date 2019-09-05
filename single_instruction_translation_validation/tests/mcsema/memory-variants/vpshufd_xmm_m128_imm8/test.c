void leaf() {
  __asm__("vpshufd $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}