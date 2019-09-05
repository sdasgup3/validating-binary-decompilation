void leaf() {
  __asm__("movzwq %cx, %rbx");
  }

void main() {
  leaf();
}