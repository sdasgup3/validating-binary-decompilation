void leaf() {
  __asm__("vpshufd $0x0, -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}