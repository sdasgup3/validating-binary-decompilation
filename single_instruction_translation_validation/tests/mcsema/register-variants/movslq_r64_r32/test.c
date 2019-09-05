void leaf() {
  __asm__("movslq %ecx, %rbx");
  }

void main() {
  leaf();
}