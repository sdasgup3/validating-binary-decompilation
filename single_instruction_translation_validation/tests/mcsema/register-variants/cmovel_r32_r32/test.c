void leaf() {
  __asm__("cmovel %ecx, %ebx");
  }

void main() {
  leaf();
}