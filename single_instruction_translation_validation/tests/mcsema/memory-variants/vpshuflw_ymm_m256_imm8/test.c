void leaf() {
  __asm__("vpshuflw $0x0, -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}