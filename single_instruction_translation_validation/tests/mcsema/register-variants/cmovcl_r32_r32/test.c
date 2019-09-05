void leaf() {
  __asm__("cmovcl %ecx, %ebx");
  }

void main() {
  leaf();
}