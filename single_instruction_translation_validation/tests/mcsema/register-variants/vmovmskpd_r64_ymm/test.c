void leaf() {
  __asm__("vmovmskpd %ymm1, %rbx");
  }

void main() {
  leaf();
}