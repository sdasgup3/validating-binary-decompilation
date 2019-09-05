void leaf() {
  __asm__("blsmskl %ecx, %ebx");
  }

void main() {
  leaf();
}