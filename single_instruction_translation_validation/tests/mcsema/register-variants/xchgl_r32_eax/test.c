void leaf() {
  __asm__("xchgl %eax, %ebx");
  }

void main() {
  leaf();
}